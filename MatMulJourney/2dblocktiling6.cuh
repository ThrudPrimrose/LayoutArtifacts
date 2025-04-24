#pragma once
#include "cuda_util.cuh"

template <const int threadsY, const int threadsX, const int dimY, const int dimX>
__device__ __forceinline__ void __load6(float *shr, const float *glb, const int offsetY, const int offsetX, const int tid, const int glbX)
{
  constexpr int NumThreads = threadsY * threadsX;
  if constexpr (NumThreads > dimX)
  {
    const int row = tid / dimX;
    const int col = tid % dimX;
    const int rowsAtATime = (NumThreads / dimX) > dimY ? dimY : (NumThreads / dimX);
    const int activeThreads = rowsAtATime * dimX;
    if (tid < activeThreads)
    {
#pragma unroll
      for (int loadOffset = 0; loadOffset < dimY; loadOffset += rowsAtATime)
      {
        const int globalY = offsetY + row + loadOffset;
        const int globalX = offsetX + col;

        shr[(row + loadOffset) * dimX + col] = glb[globalY * glbX + globalX];
      }
    }
  }
  else
  {
#pragma unroll
    for (int rowOffset = 0; rowOffset < dimY; rowOffset++)
    {
      const int globalY = offsetY + rowOffset;
#pragma unroll
      for (int colOffset = tid; colOffset < dimX; colOffset += NumThreads)
      {
        const int globalX = offsetX + colOffset;
        shr[rowOffset * dimX + colOffset] = glb[globalY * glbX + globalX];
      }
    }
  }
}

template <const int threadsY, const int threadsX, const int dimX, const int StoreLength, const int TM>
__device__ __forceinline__ void __storeToGlb6(float *glb, const float *shr, const int offsetY, const int offsetX, const int tid, const int glbX)
{
  constexpr int NumThreads = threadsY * threadsX;
  constexpr int dimY = StoreLength * threadsY;
  if constexpr (NumThreads > dimX)
  {
    const int row = tid / dimX;
    const int col = tid % dimX;
    const int rowsAtATime = (NumThreads / dimX) > dimY ? dimY : (NumThreads / dimX);
    const int activeThreads = rowsAtATime * dimX;
    if (tid < activeThreads)
    {
#pragma unroll
      for (int loadOffset = 0; loadOffset < dimY; loadOffset += rowsAtATime)
      {
        // Lets say threads computes 8x8 cells and StoreLength is 2
        // Then shared memory has in all 4 iterations 2 lines
        // Every group of 2 threads have an offset of 8 lines between each other due to how they are packed
        const int storeOffset = ((row + loadOffset) / StoreLength) * (TM) + ((row + loadOffset) % StoreLength);

        glb[(storeOffset + offsetY) * glbX + offsetX + col] = shr[(loadOffset + row) * dimX + col];
      }
    }
  }
  else
  {
#pragma unroll
    for (int rowOffset = 0; rowOffset < dimY; rowOffset++)
    {
      const int globalY = offsetY;
      // Let us say, every thread puts 2 values and we have 16 threads
      // then dimY = 2*16 = 32, and between every 2 lines receives there is an offset of TM (can be anything)
      const int storeOffset = (rowOffset / StoreLength) * (TM) + (rowOffset % StoreLength);
#pragma unroll
      for (int colOffset = tid; colOffset < dimX; colOffset += NumThreads)
      {
        const int globalX = offsetX + colOffset;
        glb[(globalY + storeOffset) * glbX + globalX] = shr[rowOffset * dimX + colOffset];
      }
    }
  }
}

template <const int ThreadsY, const int ThreadsX,
          const int BK,
          const int TM, const int TN, const int StoreLength>
__global__ void _2d_block_tiling6(const float *__restrict__ A, const float *__restrict__ B, float *__restrict__ C,
                                  const int M, const int N, const int K)
{
  constexpr int BM = TM * ThreadsY;
  constexpr int BN = TN * ThreadsX;

  //__shared__ float shrMem[std::max(BM * BK + BK * BN, BN * StoreLength * ThreadsY)]; // Store StoreLength lines at a time
  __shared__ float As[BM * BK];
  __shared__ float Bs[BK * BN];
  __shared__ float Cs[StoreLength * ThreadsY * BN];

  float threadResults[TM * TN] = {0.0f};

  const int tid = threadIdx.x + blockDim.x * threadIdx.y;
  const int globalRow = blockIdx.y * ThreadsY * TM;
  const int globalCol = blockIdx.x * ThreadsX * TN;
  const int threadRow = threadIdx.y * TM;
  const int threadCol = threadIdx.x * TN;

  {
    // outer-most loop over block tiles
    for (int bkIdx = 0; bkIdx < K; bkIdx += BK)
    {
      __load6<ThreadsY, ThreadsX, BM, BK>(As, A, globalRow, bkIdx, tid, K);
      __load6<ThreadsY, ThreadsX, BK, BN>(Bs, B, bkIdx, globalCol, tid, N);

      __syncthreads();

#pragma unroll
      for (int resIdxM = 0; resIdxM < TM; ++resIdxM)
      {
#pragma unroll
        for (int dotIdx = 0; dotIdx < BK; ++dotIdx)
        {
#pragma unroll
          for (int resIdxN = 0; resIdxN < TN; ++resIdxN)
          {
            threadResults[resIdxM * TN + resIdxN] +=
                As[(threadRow + resIdxM) * BK + dotIdx] *
                Bs[dotIdx * BN + threadCol + resIdxN];
          }
        }
      }

      __syncthreads();
    }
  }

  {
    const int localOutputCol = threadIdx.x * TN;
    const int localOutputRow = threadIdx.y * StoreLength;

    for (int resIdxM = 0; resIdxM < TM; resIdxM += StoreLength)
    {
// Store StoreLength lines at a time
#pragma unroll
      for (int s = 0; s < StoreLength; s++)
      {
#pragma unroll
        for (int resIdxN = 0; resIdxN < TN; ++resIdxN)
        {
          Cs[(localOutputRow + s) * BN + (resIdxN + localOutputCol)] = threadResults[(s + resIdxM) * TN + resIdxN];
        }
      }
      __syncthreads();
      __storeToGlb6<ThreadsY, ThreadsX, BN, StoreLength, TM>(C, Cs, globalRow + resIdxM, globalCol, tid, N);
      __syncthreads();
    }
  }
}

template <int ThreadsY, int ThreadsX, int BK, int TM, int TN, int StoreLength>
void _2d_block_tiling_launcher6(const float *__restrict__ A,
                                const float *__restrict__ B, float *__restrict__ C,
                                const int M, const int N, const int K)
{
  constexpr int BN = ThreadsX * TN;
  constexpr int BM = ThreadsY * TM;
  dim3 grid((N + BN - 1) / BN, (M + BM - 1) / BM);
  dim3 block(ThreadsX, ThreadsY, 1);
  _2d_block_tiling6<ThreadsY, ThreadsX, BK, TM, TN, StoreLength><<<grid, block>>>(A, B, C, M, N, K);
}
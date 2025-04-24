#pragma once
#include "cuda_util.cuh"

template <const int threadsY, const int threadsX, const int dimY, const int dimX>
__device__ __forceinline__ void __load_r(
    float *shr, float *glb,
    const int offsetY, const int offsetX, const int tid,
    const int lenY, const int lenX, const int glbX)
{
  constexpr int NumThreads = threadsY * threadsX;
  const bool remainder_loop = lenX < dimX || lenY < dimY;

  if constexpr (NumThreads > dimX)
  {
    if (remainder_loop)
    {
      const int row = tid / lenX;
      const int col = tid % lenX;
      const int rowsAtATime = (NumThreads / lenX) > lenY ? lenY : (NumThreads / lenX);
      const int activeThreads = rowsAtATime * lenX;
      if (tid < activeThreads)
      {
#pragma unroll dimX
        for (int loadOffset = 0; loadOffset < lenY; loadOffset += rowsAtATime)
        {
          const int globalY = offsetY + row + loadOffset;
          const int globalX = offsetX + col;
          shr[(row + loadOffset) * dimX + col] = glb[globalY * glbX + globalX];
        }
      }
    }
    else
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
  }
  else
  {
    if (remainder_loop)
    {
#pragma unroll dimY
      for (int rowOffset = 0; rowOffset < lenY; rowOffset++)
      {
        const int globalY = offsetY + rowOffset;
#pragma unroll dimX
        for (int colOffset = tid; colOffset < lenX; colOffset += NumThreads)
        {
          const int globalX = offsetX + colOffset;
          shr[rowOffset * dimX + colOffset] = glb[globalY * glbX + globalX];
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
}

template <const int ThreadsY, const int ThreadsX,
          const int BK,
          const int TM, const int TN>
__global__ void _2d_block_tiling3(float *__restrict__ A, float *__restrict__ B, float *__restrict__ C,
                                  const int M, const int N, const int K)
{
  constexpr int BM = TM * ThreadsY;
  constexpr int BN = TN * ThreadsX;
  __shared__ float As[BM * BK];
  __shared__ float Bs[BK * BN];

  float threadResults[TM * TN] = {0.0f};

  const int tid = threadIdx.x + blockDim.x * threadIdx.y;

  const int globalRow = blockIdx.y * ThreadsY * TM;
  const int globalCol = blockIdx.x * ThreadsX * TN;
  const int threadRow = threadIdx.y * TM;
  const int threadCol = threadIdx.x * TN;

  // outer-most loop over block tiles
  for (uint bkIdx = 0; bkIdx < K; bkIdx += BK)
  {
    const int lenY = globalRow + BM < M ? BM : M - globalRow;
    const int lenX = globalCol + BN < N ? BN : N - globalCol;
    const int lenK = bkIdx + BK < K ? BK : K - bkIdx;
    __load_r<ThreadsY, ThreadsX, BM, BK>(As, A, globalRow, bkIdx, tid, lenY, lenK, K);
    __load_r<ThreadsY, ThreadsX, BK, BN>(Bs, B, bkIdx, globalCol, tid, lenK, lenX, N);
    __syncthreads();

#pragma unroll
    for (uint resIdxM = 0; resIdxM < TM; ++resIdxM)
    {
#pragma unroll
      for (uint resIdxN = 0; resIdxN < TN; ++resIdxN)
      {
#pragma unroll
        for (uint dotIdx = 0; dotIdx < BK; ++dotIdx)
        {
          threadResults[resIdxM * TN + resIdxN] +=
              As[(threadRow + resIdxM) * BK + dotIdx] *
              Bs[dotIdx * BN + threadCol + resIdxN];
        }
      }
    }
    __syncthreads();
  }

  const int outputRow = globalRow + threadRow;
  const int outputCol = globalCol + threadCol;

#pragma unroll
  for (int resIdxM = 0; resIdxM < TM; ++resIdxM)
  {
#pragma unroll
    for (int resIdxN = 0; resIdxN < TN; ++resIdxN)
    {
      C[(outputRow + resIdxM) * N + outputCol + resIdxN] = threadResults[resIdxM * TN + resIdxN];
    }
  }
}

template <int ThreadsY, int ThreadsX, int BK, int TM, int TN>
void _2d_block_tiling_launcher3(float *__restrict__ A,
                                float *__restrict__ B, float *__restrict__ C,
                                const int M, const int N, const int K)
{
  constexpr int BN = ThreadsX * TN;
  constexpr int BM = ThreadsY * TM;
  dim3 grid((N + BN - 1) / BN, (M + BM - 1) / BM);
  dim3 block(ThreadsX, ThreadsY, 1);
  _2d_block_tiling3<ThreadsY, ThreadsX, BK, TM, TN><<<grid, block>>>(A, B, C, M, N, K);
}
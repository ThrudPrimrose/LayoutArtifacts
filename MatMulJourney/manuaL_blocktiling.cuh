#pragma once
#include "cuda_util.cuh"

template <const int threadsY, const int threadsX, const int dimY, const int dimX>
__device__ __forceinline__ void __load(float *shr, const float *glb, const int offsetY, const int offsetX, const int tid, const int glbX)
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

template <const int ThreadsY, const int ThreadsX,
          const int BK,
          const int TM, const int TN>
__global__ void manual_blocktiling(const float *__restrict__ A, const float *__restrict__ B, float *__restrict__ C,
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
  for (int bkIdx = 0; bkIdx < K; bkIdx += BK)
  {
    __load<ThreadsY, ThreadsX, BM, BK>(As, A, globalRow, bkIdx, tid, K);
    __load<ThreadsY, ThreadsX, BK, BN>(Bs, B, bkIdx, globalCol, tid, N);

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
void manual_blocktiling(const float *__restrict__ A,
                                const float *__restrict__ B, float *__restrict__ C,
                                const int M, const int N, const int K)
{
  constexpr int BN = ThreadsX * TN;
  constexpr int BM = ThreadsY * TM;
  dim3 grid((N + BN - 1) / BN, (M + BM - 1) / BM);
  dim3 block(ThreadsX, ThreadsY, 1);
  manual_blocktiling<ThreadsY, ThreadsX, BK, TM, TN><<<grid, block>>>(A, B, C, M, N, K);
}
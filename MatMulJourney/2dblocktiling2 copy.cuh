#define CEIL_DIV(M, N) (((M) + (N) - 1) / (N))

template <const int threadsY, const int threadsX, const int dimY, const int dimX>
__device__ __forceinline__ void __load(float *shr, float *glb, const int offsetY, const int offsetX, const int tid)
{
  constexpr int NumThreads = threadsY * threadsX;
  /*
  if constexpr (NumThreads > dimX){
    const int row = tid / dimX;
    const int col = tid % dimX;
    const int rowsAtATime = NumThreads / dimX;
    const int activeThreads = rowsAtATime * dimX;
    if (tid < activeThreads){
      #pragma unroll
      for (uint loadOffset = 0; loadOffset < dimY; loadOffset += rowsAtATime) {
        shr[(row + loadOffset) * dimX + col] =
          glb[(row + loadOffset + offsetY) * dimX + col + offsetX];
      }
    }
  } else
  */
  {
#pragma unroll
    for (uint rowOffset = 0; rowOffset < dimY; rowOffset++)
    {
#pragma unroll
      for (uint colOffset = tid; colOffset < dimX; colOffset += NumThreads)
      {
        shr[(rowOffset)*dimX + colOffset] =
            glb[(rowOffset + offsetY) * dimX + offsetX + colOffset];
      }
    }
  }
}

template <const int ThreadsY, const int ThreadsX,
          const int BK,
          const int TM, const int TN>
__global__ void _2d_block_tiling2(float *__restrict__ A, float *__restrict__ B, float *__restrict__ C,
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
    __load<ThreadsY, ThreadsX, BM, BK>(As, A, globalRow, bkIdx, tid);
    __load<ThreadsY, ThreadsX, BK, BN>(Bs, B, bkIdx, globalCol, tid);
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

#pragma unroll
  for (uint resIdxM = 0; resIdxM < TM; ++resIdxM)
  {
#pragma unroll
    for (uint resIdxN = 0; resIdxN < TN; ++resIdxN)
    {
      C[(globalRow + threadRow + resIdxM) * N + globalCol + threadCol + resIdxN] =
          threadResults[resIdxM * TN + resIdxN];
    }
  }
}

template <int ThreadsY, int ThreadsX, int BK, int TM, int TN>
void _2d_block_tiling_launcher2(float *__restrict__ A,
                                float *__restrict__ B, float *__restrict__ C,
                                const int M, const int N, const int K)
{
  constexpr int BN = ThreadsX * TN;
  constexpr int BM = ThreadsY * TM;
  dim3 grid(CEIL_DIV(N, BN), CEIL_DIV(M, BM), 1);
  dim3 block(ThreadsX, ThreadsY, 1);
  cudaProfilerStart();
  _2d_block_tiling2<ThreadsY, ThreadsX, BK, TM, TN><<<grid, block>>>(A, B, C, M, N, K);
  cudaProfilerStop();
}

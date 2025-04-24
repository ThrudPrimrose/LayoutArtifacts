#pragma once
#include <cassert>
#include <cuda_profiler_api.h>

template <int BM, int BN, int blockDimX, int blockDimY>
__device__ __forceinline__ void loadSubMatrixToSharedMemory(float* sharedMem, const float* globalMem, int row, int col, int strideA, int lenY, int lenX) {
    constexpr int numthreads = blockDimX*blockDimY;
    static_assert(BN % numthreads == 0 || numthreads % BN == 0);
    //if constexpr (BN >= numthreads){
        int threadCol = threadIdx.x;
        #pragma unroll
        for (int r = 0; r < lenY; r++) {
            #pragma unroll
            for (int c = threadCol; c < lenX; c += blockDimX) {
                sharedMem[r * BN + c] = globalMem[(row + r) * strideA + (col + c)];
            }
        }
    //}
    //if constexpr (BN < numthreads) {
    //    constexpr int numlines = numthreads / BN;
    //    static_assert(false);
    //}
}

// A thread computes tX x tY tile
// A warp computes tX * wX x ty * wY tile where wX * wY == 32
// A thread block computes tX * wX * numThreadsX x tY * wY * numThreadsY tile where nTY * nTX <= 1024

// CUDA kernel for matrix multiplication
template <int threadsX, int threadsY, int blockItemsK, int threadItemsY, int threadItemsX>
__global__ void matmul_better_tiled_no_warp(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    constexpr int blockItemsX = threadsX * threadItemsX;
    constexpr int blockItemsY = threadsY * threadItemsY;

    constexpr int numThreads = threadsX * threadsY;
    const int tid = threadIdx.x + blockDim.x * threadIdx.y;

    constexpr int tileM = blockItemsY;
    constexpr int tileN = blockItemsX;
    constexpr int tileK = blockItemsK;
    __shared__ float __align__(16) shrA[tileM * tileK];
    __shared__ float __align__(16) shrB[tileK * tileN];
    float results[threadItemsY * threadItemsX]{0.f};
    float fragA[threadItemsY]{0.f};
    float fragB[threadItemsX]{0.f};

    for (int k = 0 ; k < K; k += tileK){
        const int lenK = (k + tileK) < K? tileK : K - k;
        /*
        #pragma unroll
        for (int tidOffset = tid; tidOffset < tileM * tileK; tidOffset += numThreads){
            shrA[tidOffset] = 0.f;
        }
        #pragma unroll
        for (int tidOffset = tid; tidOffset < tileK * tileN; tidOffset += numThreads){
            shrB[tidOffset] = 0.f;
        }
        __syncthreads();
        */
        assert("lenK <= tileK" && lenK <= tileK);
        // Load A and B tiles to shared memory
        {
            const int globalOffsetX_A = k;
            const int globalOffsetY_A = blockIdx.y * threadsY * threadItemsY;
            const int lenY_A = globalOffsetY_A + blockItemsY < M? blockItemsY : M - globalOffsetY_A;
            const int lenX_A = lenK;
            loadSubMatrixToSharedMemory<blockItemsY, blockItemsK, threadsX, threadsY>(shrA, A, globalOffsetY_A, globalOffsetX_A, K, lenY_A, lenX_A);
            //if (lenY_A > 0)
            //    loadFromGlbToShr2<tileM, tileK, numThreads>(shrA, A, lenY_A, lenX_A, globalOffsetY_A, globalOffsetX_A, globalDimY_A, globalDimX_A);
        }
        {
            const int globalOffsetX_B = blockIdx.x * threadsX * threadItemsX;
            const int globalOffsetY_B = k;
            const int lenY_B = lenK;
            const int lenX_B = globalOffsetX_B + blockItemsX < N? blockItemsX: N - globalOffsetX_B;
            loadSubMatrixToSharedMemory<blockItemsK, blockItemsX, threadsX, threadsY>(shrB, B, globalOffsetY_B, globalOffsetX_B, N, lenY_B, lenX_B);
            //if (lenX_B > 0)
            //    loadFromGlbToShr2<tileK, tileN, numThreads>(shrB, B, lenY_B, lenX_B, globalOffsetY_B, globalOffsetX_B, globalDimY_B, globalDimX_B);
        }
        __syncthreads();
        { 
            for (int wk = 0; wk < lenK; ++wk)
            {
                #pragma unroll
                for (int i = 0; i < threadItemsY; ++i)
                {
                    const int y = threadIdx.y * threadItemsY + i;
                    const int x = wk;
                    assert("shrA y < tileM" && y < tileM);
                    assert("shrA x < tileK" && x < tileK);
                    fragA[i] = shrA[y*tileK + x];
                }
                #pragma unroll
                for (int j = 0; j < threadItemsX; ++j)
                {
                    const int y = wk;
                    const int x = threadIdx.x * threadItemsX + j;
                    assert("shrB y < tileK" && y < tileK);
                    assert("shrB x < tileN" && x < tileN);
                    fragB[j] = shrB[y*tileN + x];
                }
                // Thread Level Loop
                #pragma unroll
                for (int i = 0; i < threadItemsY; i++){
                    #pragma unroll
                    for (int j = 0; j < threadItemsX; j++){
                        results[i * threadItemsX + j] += fragA[i] * fragB[j];
                    }
                }
            }
        }
        __syncthreads();
    }
    // Store
    const int cy = blockIdx.y * threadsY * threadItemsY;
    const int cx = blockIdx.x * threadsX * threadItemsX;
    #pragma unroll
    for (int i = 0; i < threadItemsY; i++){
        #pragma unroll
        for (int j = 0; j < threadItemsX; j++){
            C[(cy+i)*N + cx+j] = results[i * threadItemsX + j];
        }
    }
}

template <int threadsX, int threadsY, int blockItemsK, int threadItemsY, int threadItemsX>
void matmul_better_tiled_no_warp_launcher(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    dim3 block(threadsX, threadsY, 1);
    constexpr int x_granularity = threadsX * threadItemsX;
    constexpr int y_granularity = threadsY * threadItemsY;
    dim3 grid((N + x_granularity-1)/x_granularity, (M+y_granularity-1)/y_granularity, 1);
    cudaProfilerStart();
    matmul_better_tiled_no_warp<threadsX, threadsY, blockItemsK, threadItemsY, threadItemsX><<<grid,block>>>(A, B, C, M, N, K);
    cudaProfilerStop();
}
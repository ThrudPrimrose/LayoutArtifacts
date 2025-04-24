#pragma once
#include <cassert>
#include <cuda_profiler_api.h>

template <int dstDimY, int dstDimX, int NumThreads>
__device__ __forceinline__ void loadFromGlbToShr(float* dst, const float* src, const int lenY, const int lenX, 
    const int globalOffsetY, const int globalOffsetX, const int globalDimY, const int globalDimX){
    constexpr int num_threads = NumThreads;
    const int tid = threadIdx.x + blockDim.x * threadIdx.y;
    if (lenX < num_threads){
        const int num_lines_at_a_time = num_threads / lenX;
        assert(num_lines_at_a_time > 0);
        const int active_threads = lenX * num_lines_at_a_time;
        assert(active_threads <= num_threads);
        const int line_num = tid / lenX;
        const int line_offset = tid  % lenX;
        if (tid < active_threads){
#pragma unroll
            for (int i = 0; i < lenY; i += num_lines_at_a_time){
                dst[dstDimX * (i + line_num) + line_offset] 
                    = src[globalDimX * (globalOffsetY + i + line_num) + globalOffsetX + line_offset];
            }
        }
    } else {
        const int num_iter = lenX / num_threads;
        const int num_remainder = lenX % num_threads;
#pragma unroll
        for (int i = 0; i < lenY; i++){
#pragma unroll
            for (int j = 0; j < num_iter; j++){
                assert(i < dstDimY);
                assert(num_threads * j + tid < dstDimX);
                assert(globalOffsetY + i < globalDimY);
                assert(globalOffsetX + num_threads * j + tid < globalDimX);
                dst[dstDimX * i + num_threads * j + tid] 
                    = src[globalDimX * (globalOffsetY + i) + globalOffsetX + num_threads * j + tid];
            }
            if (tid < num_remainder){
                assert(i < dstDimY);
                assert(num_threads * num_iter + tid < dstDimX);
                assert(globalOffsetY + i < globalDimY);
                assert(globalOffsetX + num_threads * num_iter + tid < globalDimX);
                dst[dstDimX * i + num_threads * num_iter + tid] 
                    = src[globalDimX * (globalOffsetY + i) + globalOffsetX + num_threads * num_iter + tid];
            }
        }
    }
}

// A thread computes tX x tY tile
// A warp computes tX * wX x ty * wY tile where wX * wY == 32
// A thread block computes tX * wX * numThreadsX x tY * wY * numThreadsY tile where nTY * nTX <= 1024

// CUDA kernel for matrix multiplication
template <int threadsX, int blockItemsK, int numWarpsY, int numWarpsX, int warpDimY, int warpDimX, int threadItemsY, int threadItemsX>
__global__ void matmul_better_tiled(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    constexpr int blockItemsX = numWarpsX * warpDimX * threadItemsX;
    constexpr int blockItemsY = numWarpsY * warpDimY * threadItemsY;
    static_assert(warpDimY * warpDimX == 32);

    constexpr int numThreads = threadsX;
    constexpr int numWarps = threadsX / 32;
    static_assert(numWarps == (numWarpsX * numWarpsY));

    const int tid = threadIdx.x;
    const int warpId = tid / 32;
    const int warpIdX = warpId % numWarpsX;
    const int warpIdY = warpId / numWarpsX;
    const int warpOffset = tid % 32;
    const int warpOffsetX = warpOffset % warpDimX;
    const int warpOffsetY = warpOffset / warpDimX;

    constexpr int tileM = blockItemsY;
    constexpr int tileN = blockItemsX;
    constexpr int tileK = blockItemsK;
    __shared__ float __align__(16) shrA[tileM * tileK];
    __shared__ float __align__(16) shrB[tileK * tileN];
    float results[threadItemsY][threadItemsX]{0.f};
    float fragA[threadItemsY]{0.f};
    float fragB[threadItemsX]{0.f};

    for (int k = 0 ; k < K; k += tileK){
        const int lenK = (k + tileK) < K? tileK : K - k;
        if (lenK < tileK){
            #pragma unroll
            for (int tidOffset = tid; tidOffset < tileM * tileK; tidOffset += numThreads){
                shrA[tidOffset] = 0.f;
            }
            #pragma unroll
            for (int tidOffset = tid; tidOffset < tileK * tileN; tidOffset += numThreads){
                shrB[tidOffset] = 0.f;
            }
            __syncthreads();
        }
        assert("lenK <= tileK" && lenK <= tileK);
        // Load A and B tiles to shared memory
        {
            const int globalOffsetX_A = k;
            const int globalOffsetY_A = blockIdx.y * numWarpsY * warpDimY * threadItemsY;
            const int lenY_A = globalOffsetY_A + blockItemsY < M? blockItemsY : M - globalOffsetY_A;
            const int lenX_A = lenK;
            const int globalDimY_A = M;
            const int globalDimX_A = K;
            if (lenY_A > 0)
                loadFromGlbToShr<tileM, tileK, numThreads>(shrA, A, lenY_A, lenX_A, globalOffsetY_A, globalOffsetX_A, globalDimY_A, globalDimX_A);
        }
        {
            const int globalOffsetX_B = blockIdx.x * numWarpsX * warpDimX * threadItemsX;
            const int globalOffsetY_B = k;
            const int lenY_B = lenK;
            const int lenX_B = globalOffsetX_B + blockItemsX < N? blockItemsX: N - globalOffsetX_B;
            const int globalDimY_B = K;
            const int globalDimX_B = N;
            if (lenX_B > 0)
                loadFromGlbToShr<tileK, tileN, numThreads>(shrB, B, lenY_B, lenX_B, globalOffsetY_B, globalOffsetX_B, globalDimY_B, globalDimX_B);
        }
        __syncthreads();
        { 
            for (int wk = 0; wk < lenK; ++wk)
            {
                #pragma unroll
                for (int i = 0; i < threadItemsY; ++i)
                {
                    const int y = warpIdY * warpDimY * threadItemsY + warpOffsetY * threadItemsY + i;
                    const int x = wk;
                    assert("shrA y < tileM" && y < tileM);
                    assert("shrA x < tileK" && x < tileK);
                    fragA[i] = shrA[y*tileK + x];
                }
                #pragma unroll
                for (int j = 0; j < threadItemsX; ++j)
                {
                    const int y = wk;
                    const int x = warpIdX * warpDimX * threadItemsX + warpOffsetX * threadItemsX + j;
                    assert("shrB y < tileK" && y < tileK);
                    assert("shrB x < tileN" && x < tileN);
                    fragB[j] = shrB[y*tileN + x];
                }
                // Thread Level Loop
                #pragma unroll
                for (int i = 0; i < threadItemsY; i++){
                    #pragma unroll
                    for (int j = 0; j < threadItemsX; j++){
                        results[i][j] += fragA[i] * fragB[j];
                    }
                }
            }
        }
        __syncthreads();
    }
    // Store
    #pragma unroll
    for (int i = 0; i < threadItemsY; i++){
        #pragma unroll
        for (int j = 0; j < threadItemsX; j++){
            const int cy = blockIdx.y * numWarpsY * warpDimY * threadItemsY + warpOffsetY * threadItemsY + i;
            const int cx = blockIdx.x * numWarpsX * warpDimX * threadItemsX + warpOffsetX * threadItemsX + j;
            C[cy*N + cx] = results[i][j];
        }
    }
}

template <int threadsX, int blockItemsK, int numWarpsY, int numWarpsX, int warpDimY, int warpDimX, int threadItemsY, int threadItemsX>
void matmul_better_tiled_launcher(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    dim3 block(threadsX, 1, 1);
    constexpr int x_granularity = numWarpsX * warpDimX * threadItemsX;
    constexpr int y_granularity = numWarpsY * warpDimY * threadItemsY;
    dim3 grid((N + x_granularity-1)/x_granularity, (M+y_granularity-1)/y_granularity, 1);
    cudaProfilerStart();
    matmul_better_tiled<threadsX, blockItemsK, numWarpsY, numWarpsX, warpDimY, warpDimX, threadItemsY, threadItemsX><<<grid,block>>>(A, B, C, M, N, K);
    cudaProfilerStop();
}
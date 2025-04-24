#pragma once
#include <cassert>
#include <cuda_profiler_api.h>

template <int dstDimY, int dstDimX, int NumThreads>
__device__ __forceinline__ void load(float* dst, const float* src, const int lenY, const int lenX, 
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
#pragma unroll dstDimY
            for (int i = 0; i < lenY; i += num_lines_at_a_time){
                dst[dstDimX * (i + line_num) + line_offset] 
                    = src[globalDimX * (globalOffsetY + i + line_num) + globalOffsetX + line_offset];
            }
        }
    } else {
        const int num_iter = lenX / num_threads;
        const int num_remainder = lenX % num_threads;
#pragma unroll dstDimY
        for (int i = 0; i < lenY; i++){
#pragma unroll dstDimX
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

// CUDA kernel for matrix multiplication
template <int threadsX, int threadsY, int tX, int tY, int bX, int bY, int bK>
__global__ void matmul_load_compute(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K) {
    const int base_global_y = blockIdx.y * blockDim.y*tY*bY;
    const int base_global_x = blockIdx.x * blockDim.x*tX*bX;
    constexpr int tileM = threadsY*tY;
    constexpr int tileN = threadsX*tX;
    constexpr int tileK = bK;
    __shared__ float __align__(16) shrA[tileM * tileK];
    __shared__ float __align__(16) shrB[tileK * tileN];
    const int local_col = threadIdx.x*tX;
    const int local_row = threadIdx.y*tY;
    constexpr int block_process_granularity_y = threadsY*tY;
    static_assert(block_process_granularity_y == tileM);
    constexpr int block_process_granularity_x = threadsX*tX;
    static_assert(block_process_granularity_x == tileN);
    float values[tY][tX];
    // Y corresponds to dim -> M
    // X corresponds to dim -> N

    for (int bi = 0; bi < bY; bi++){
        for (int bj = 0; bj < bX; bj++){
            #pragma unroll tY
            for (int y = 0; y < tY; y++){
                #pragma unroll tX
                for (int x = 0; x < tX; x++){
                    values[y][x] = 0.f;
                }
            }

            const int glb_row_block = base_global_y + block_process_granularity_y*bi;
            const int glb_col_block = base_global_x + block_process_granularity_x*bj;
            const int glb_row_thread = glb_row_block + local_row;
            const int glb_col_thread = glb_col_block + local_col;

            const int num_iter_x = (glb_col_thread + tX) > N? N - glb_col_thread : tX;
            const int num_iter_y = (glb_row_thread + tY) > M? M - glb_row_thread : tY;

            for (int bk = 0; bk < K; bk += bK) {
                const int num_iter_k = bk + bK > K? K - bk : bK;
                {
                    const int lenX_A = num_iter_k;
                    const int lenY_A = glb_row_block + block_process_granularity_y > M? M - glb_row_block  : block_process_granularity_y;
                    const int globalOffsetX_A = bk;
                    const int globalOffsetY_A = glb_row_block;
                    assert(lenY_A <= tileM);
                    assert(lenX_A <= tileK);
                    assert(globalOffsetX_A + lenX_A <= K);
                    assert(globalOffsetY_A + lenY_A <= M);
                    load<tileM, tileK, threadsX*threadsY>(shrA, A, lenY_A, lenX_A, globalOffsetY_A, globalOffsetX_A, M, K);
                }
                {
                    const int lenX_B = glb_col_block  + block_process_granularity_x > N? N - glb_col_block  : block_process_granularity_x;
                    const int lenY_B = num_iter_k;
                    const int globalOffsetX_B = glb_col_block ;
                    const int globalOffsetY_B = bk;
                    assert(lenY_B <= tileK);
                    assert(lenX_B <= tileN);
                    assert(globalOffsetX_B + lenX_B <= N);
                    assert(globalOffsetY_B + lenY_B <= K);
                    load<tileK, tileN, threadsX*threadsY>(shrB, B, lenY_B, lenX_B, globalOffsetY_B, globalOffsetX_B, K, N);
                }
                __syncthreads();
    #pragma unroll tY
                for (int i = 0; i < num_iter_y; i++){
    #pragma unroll tX
                    for (int j = 0; j < num_iter_x; j++){
    #pragma unroll bK
                        for (int k = 0; k < num_iter_k; k++){
                            values[i][j] += shrA[(local_row+i) * tileK + k] * shrB[k * tileN + j + local_col];
                        }
                    }
                }
            }
    #pragma unroll tY
            for (int i = 0; i < num_iter_y; i++){
    #pragma unroll tX
                for (int j = 0; j < num_iter_x; j++){
                    C[(glb_row_thread+i) * N + (glb_col_thread+j)] = values[i][j];
                }
            }
            __syncthreads();
        }
    }


}

template <int X, int Y, int tX, int tY, int bX, int bY, int bK>
void matmul_load_compute_launcher(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    dim3 block(X, Y, 1);
    dim3 grid((M + X*tX*bX - 1)/(X*tX*bX), (N + Y*tY*bY - 1)/(Y*tY*bY), 1);
    cudaProfilerStart();
    matmul_load_compute<X, Y, tX, tY, bX, bY, bK><<<grid,block>>>(A, B, C, M, N, K);
    cudaProfilerStop();
}
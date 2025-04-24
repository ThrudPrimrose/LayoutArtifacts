#pragma once
#include <cuda_profiler_api.h>

// CUDA kernel for matrix multiplication
template <int tX, int tY, int bX, int bY>
__global__ void matmul_block_coarsened(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K) {
    const int base_row = blockIdx.y * blockDim.y*tY*bY + threadIdx.y*tY;
    const int base_col = blockIdx.x * blockDim.x*tX*bX + threadIdx.x*tX;
    float values[tY][tX] = {0.f};


#pragma unroll
    for (int bi = 0; bi < bY; bi++){
#pragma unroll
        for (int bj = 0; bj < bX; bj++){
    #pragma unroll
            for (int i = 0; i < tY; i++){
    #pragma unroll
                for (int j = 0; j < tX; j++){
                    values[i][j] = 0.f;
                }
            }

            const int row = base_row + blockDim.y*tY*bi;
            const int col = base_col + blockDim.x*tX*bj;
            const int num_iter_x = row + tX > N? N - (row + tX) : tX;
            const int num_iter_y = col + tY > N? N - (col + tY) : tY;
    #pragma unroll
                for (int i = 0; i < num_iter_y; i++){
    #pragma unroll
                    for (int j = 0; j < num_iter_x; j++){
    #pragma unroll
                        for (int k = 0; k < K; k++){
                            values[i][j] += A[(row+i) * K + k] * B[k * N + (col+j)];
                        }
                    }
                }
    #pragma unroll
            for (int i = 0; i < num_iter_y; i++){
    #pragma unroll
                for (int j = 0; j < num_iter_x; j++){
                    C[(row+i) * N + (col+j)] = values[i][j];
                }
            }
        }
    }
}

template <int X, int Y, int tX, int tY, int bX, int bY>
void matmul_block_coarsened_launcher(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    dim3 block(X, Y, 1);
    dim3 grid((M + X*tX*bX - 1)/(X*tX*bX), (N + Y*tY*bY - 1)/(Y*tY*bY), 1);
    cudaProfilerStart();
    matmul_block_coarsened<tX, tY, bX, bY><<<grid,block>>>(A, B, C, M, N, K);
    cudaProfilerStop();
}
#pragma once
#include <cuda_profiler_api.h>

// CUDA kernel for matrix multiplication
__global__ void matmul_naive(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K) {
    const int row = blockIdx.y * blockDim.y + threadIdx.y;
    const int col = blockIdx.x * blockDim.x + threadIdx.x;

    if (row < M && col < N) {
        float value = 0.f;
        for (int k = 0; k < K; ++k) {
            value += A[row * K + k] * B[k * N + col];
        }
        C[row * N + col] = value;
    }
}

template <int X, int Y>
void matmul_naive_launcher(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    dim3 block(X, Y, 1);
    dim3 grid((M + X - 1)/X, (N + Y - 1)/Y, 1);
    cudaProfilerStart();
    matmul_naive<<<grid,block>>>(A, B, C, M, N, K);
    cudaProfilerStop();
}
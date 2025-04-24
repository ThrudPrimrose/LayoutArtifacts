#pragma once

// CUDA kernel for matrix multiplication
template <int tX, int tY>
__global__ void matmul_thread_coarsened2(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K) {
    const int row = blockIdx.y * blockDim.y*tY + threadIdx.y*tY;
    const int col = blockIdx.x * blockDim.x*tX + threadIdx.x*tX;


    const int num_iter_x = row + tX > N? N - (row + tX) : tX;
    const int num_iter_y = col + tY > N? N - (col + tY) : tY;

    float values[tY][tX] = {0.f};

    for (int k = 0; k < K; k++){
#pragma unroll tY
        for (int i = 0; i < num_iter_y; i++){
#pragma unroll tX
            for (int j = 0; j < num_iter_x; j++){
                values[i][j] += A[(row+i) * K + k] * B[k * N + (col+j)];
            }
        }
    }

#pragma unroll tY
    for (int i = 0; i < num_iter_y; i++){
#pragma unroll tX
        for (int j = 0; j < num_iter_x; j++){
            C[(row+i) * N + (col+j)] = values[i][j];
        }
    }

}

template <int X, int Y, int tX, int tY>
void matmul_thread_coarsened_launcher2(const float* __restrict__ A, const float* __restrict__ B, 
                             float* __restrict__ C, const int M, const int N, const int K){
    dim3 block(X, Y, 1);
    dim3 grid((M + X*tX - 1)/(X*tX), (N + Y*tY - 1)/(Y*tY), 1);
    matmul_thread_coarsened<tX, tY><<<grid,block>>>(A, B, C, M, N, K);
}
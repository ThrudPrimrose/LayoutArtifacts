#pragma once
#include "cuda_util.cuh"
#include <mma.h>
using namespace nvcuda;

template <const int WarpsY, 
          const int WarpsX,
          const int BK,
          const int WM, 
          const int WN>
__global__ void _matmul_tensor_core(const half* __restrict__ A, const half* __restrict__ B, half* __restrict__ C,
                                       const int M, const int N, const int K) {
  constexpr int numWarps = WarpsY * WarpsX;
  const int threadId = threadIdx.x;
  const int warpId = threadId / 32;
  const int warpX = warpId % WarpsX;
  const int warpY = warpId % WarpsY;
  const int m = blockIdx.y * WarpsY * WM * 16 + warpY * WM * 16;
  const int n = blockIdx.x * WarpsX * WN * 16 + warpX * WN * 16;


  wmma::fragment<wmma::matrix_a, 16, 16, 16, half, wmma::row_major> a_frag[WM * WN];
  wmma::fragment<wmma::matrix_b, 16, 16, 16, half, wmma::row_major> b_frag[WM * WN];
  wmma::fragment<wmma::accumulator, 16, 16, 16, float> acc_frag[WM * WN];
  wmma::fragment<wmma::accumulator, 16, 16, 16, float> c_frag[WM * WN];

    #pragma unroll
    for (int wi = 0; wi < WM; wi++){
        #pragma unroll
        for (int wj = 0; wj < WN; wj++){
            wmma::fill_fragment(acc_frag[wi * WN + wj], 0.0f);
        }
    }


  for (int k = 0; k < K; k+=16){
    #pragma unroll
    for (int wi = 0; wi < WM; wi++){
        #pragma unroll
        for (int wj = 0; wj < WN; wj++){
          int aRow = m + wi * 16;
          int aCol = k;
          int bRow = k;
          int bCol = n + wj * 16;

          wmma::load_matrix_sync(a_frag, A + aRow + aCol * N, N);
          wmma::load_matrix_sync(b_frag, B + bRow + bCol * K, K);

          wmma::mma_sync(acc_frag, a_frag, b_frag, acc_frag);
        }
    }
  }


}

template <int WarpsY, int WarpsX, int BK, int WM, int WN>
void matmul_tensor_core_launcher(const half* __restrict__ A,
                                 const half* __restrict__ B, 
                                 half* __restrict__ C,
                                 const int M, const int N, const int K) {
    constexpr int BN = WarpsX * WN * 16;
    constexpr int BM = WarpsY * WM * 16;
    dim3 grid((N + BN - 1) / BN, (M + BM - 1) / BM);
    dim3 block(WarpsX*WarpsY*32, 1);
    _matmul_tensor_core<WarpsY, WarpsX, BK, WM, WN><<<grid, block>>>(A, B, C, M, N, K);
}
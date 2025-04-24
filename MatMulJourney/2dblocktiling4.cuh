
#include "/workspace/dace/dace/runtime/include/dace/copy.h"
#include "/workspace/dace/dace/runtime/include/dace/dace.h"

#include <cuda_runtime.h>

__device__ __forceinline__ void innerLoopKernel_1_1_0(float *__restrict__ shrA,
                                                      float *__restrict__ shrB,
                                                      float *__restrict__ tmp)
{

  {

    {
#pragma unroll
      for (auto i = 0; i < 8; i += 1)
      {
#pragma unroll
        for (auto j = 0; j < 8; j += 1)
        {
          {
#pragma unroll
            for (auto tk = 0; tk < 16; tk += 1)
            {
              float __tmp3;
              float __tmp4;
              {
                float __in2 = shrB[(j + (128 * tk))];
                float __in1 = shrA[((16 * i) + tk)];
                float __out;

                ///////////////////
                // Tasklet code (_Mult_)
                __out = (__in1 * __in2);
                ///////////////////

                __tmp3 = __out;
              }
              {
                float __in2 = __tmp3;
                float __in1 = tmp[((8 * i) + j)];
                float __out;

                ///////////////////
                // Tasklet code (_Add_)
                __out = (__in1 + __in2);
                ///////////////////

                __tmp4 = __out;
              }
              {
                float __inp = __tmp4;
                float __out;

                ///////////////////
                // Tasklet code (assign_261_6)
                __out = __inp;
                ///////////////////

                tmp[((8 * i) + j)] = __out;
              }
            }
          }
        }
      }
    }
  }
}

__device__ __forceinline__ void
outerLoopKernel_1_2_0(float *__restrict__ shrA, float *__restrict__ shrB,
                      float *__restrict__ tmp, int K, int M, int N, int b_i,
                      int b_j, int d_i, int d_j, int k)
{

  {

    {
#pragma unroll
      for (int i = 0; i < Min(8, ((M - b_i) - d_i)); i += 1)
      {
#pragma unroll
        for (int j = 0; j < Min(8, ((N - b_j) - d_j)); j += 1)
        {
          {
#pragma unroll
            for (int tk = 0; tk < Min(16, (K - k)); tk += 1)
            {
              float __tmp3;
              float __tmp4;
              {
                float __in2 = shrB[(j + (128 * tk))];
                float __in1 = shrA[((16 * i) + tk)];
                float __out;

                ///////////////////
                // Tasklet code (_Mult_)
                __out = (__in1 * __in2);
                ///////////////////

                __tmp3 = __out;
              }
              {
                float __in2 = __tmp3;
                float __in1 = tmp[((8 * i) + j)];
                float __out;

                ///////////////////
                // Tasklet code (_Add_)
                __out = (__in1 + __in2);
                ///////////////////

                __tmp4 = __out;
              }
              {
                float __inp = __tmp4;
                float __out;

                ///////////////////
                // Tasklet code (assign_266_6)
                __out = __inp;
                ///////////////////

                tmp[((8 * i) + j)] = __out;
              }
            }
          }
        }
      }
    }
  }
}

__device__ __forceinline__ void
nested_sub_0_0_12(float *__restrict__ shrA, float *__restrict__ shrB,
                  float *__restrict__ tmp, int K, int M, int N, int b_i,
                  int b_j, int d_i, int d_j, int k)
{

  if ((((k + 16) <= K) && (((b_j + d_j) + 8) <= N) &&
       (((b_i + d_i) + 8) <= M)))
  {
    {
      innerLoopKernel_1_1_0(&shrA[0], &shrB[0], &tmp[0]);
    }
  }
  else
  {
    {

      outerLoopKernel_1_2_0(&shrA[0], &shrB[0], &tmp[0], K, M, N, b_i, b_j, d_i,
                            d_j, k);
    }
  }

  tmp = tmp;
}

__device__ __forceinline__ void
innerAssignment1_4_1_0(float *__restrict__ tmp, float *__restrict__ C, int N)
{

  {
    dace::CopyND<float, 1, false, 8, 8>::template ConstSrc<8, 1>::Copy(tmp, C,
                                                                       N, 1);
  }
}

__device__ __forceinline__ void
remainderAssignment1_4_2_0(float *__restrict__ tmp, float *__restrict__ C,
                           int M, int N, int b_i, int b_j, int d_i, int d_j)
{

  {
    dace::CopyNDDynamic<float, 1, false, 2>::template ConstSrc<8, 1>::Copy(
        tmp, C, Min(8, ((M - b_i) - d_i)), N, Min(8, ((N - b_j) - d_j)), 1);
  }
}

__device__ __forceinline__ void
nestedAssignment1_0_0_13(float *__restrict__ tmp, float *__restrict__ C, int M,
                         int N, int b_i, int b_j, int d_i, int d_j)
{

  if (((((b_i + d_i) + 8) <= M) && (((b_j + d_j) + 8) <= N)))
  {
    {
      innerAssignment1_4_1_0(&tmp[0], &C[0], N);
    }
  }
  else
  {
    {
      remainderAssignment1_4_2_0(&tmp[0], &C[0], M, N, b_i, b_j, d_i, d_j);
    }
  }
}

__global__ void __launch_bounds__(256)
    dace_naive_matmul_258_0_0_3(const float *__restrict__ A,
                                const float *__restrict__ B,
                                float *__restrict__ C, int K, int M, int N)
{
  {
    {
      int b_j = (128 * blockIdx.x);
      int b_i = (128 * blockIdx.y);
      {
        {
          {
            float tmp[64] DACE_ALIGN(64) = {0};
            int d_j = (8 * threadIdx.x);
            int d_i = (8 * threadIdx.y);
            {
              {
                {
                  for (int k = 0; k < K; k += 16)
                  {
                    __shared__ float shrB[2048];
                    __shared__ float shrA[2048];
                    {
                      const float *IN_B = &B[(((N * k) + b_j) + d_j)];
                      float *OUT_B = shrB + d_j;

                      ///////////////////
                      // B[K,N]
                      // shrB[16,128]
                      // Inner Loop Condition: k <= K - 16 && b_j <= N - 128
                      const int tid = threadIdx.x + blockDim.x * threadIdx.y + (blockDim.x * blockDim.y) * threadIdx.z;
                      // Num Threads: 256, Line Length (max): 128
                      // load multiple lines at a time 2
                      const int line_offset = tid % 128;
                      const int line_num = tid / 128;
#pragma unroll
                      for (int i0 = 0; i0 < 16; i0 += 2)
                      {
                        shrB[line_num * 128 + line_offset + ((i0) * 128)] = B[(N * (k)) + (1 * (b_j)) + line_num * N + line_offset + ((i0)*N)];
                      }
                      ///////////////////
                    }
                    {
                      const float *IN_A = &A[((K * (b_i + d_i)) + k)];
                      float *OUT_A = shrA + (16 * d_i);

                      ///////////////////
                      // A[M,K]
                      // shrA[128,16]
                      // Inner Loop Condition: b_i <= M - 128 && k <= K - 16
                      const int tid = threadIdx.x + blockDim.x * threadIdx.y + (blockDim.x * blockDim.y) * threadIdx.z;
                      // Num Threads: 256, Line Length (max): 16
                      // load multiple lines at a time 16
                      const int line_offset = tid % 16;
                      const int line_num = tid / 16;
#pragma unroll
                      for (int i0 = 0; i0 < 128; i0 += 16)
                      {
                        shrA[line_num * 16 + line_offset + ((i0) * 16)] = A[(K * (b_i)) + (1 * (k)) + line_num * K + line_offset + ((i0)*K)];
                      }
                      __syncthreads();
                      ///////////////////
                    }
                    nested_sub_0_0_12(&shrA[(16 * d_i)], &shrB[d_j], &tmp[0], K, M, N, b_i, b_j, d_i, d_j, k);
                    __syncthreads();
                  }
                }
                nestedAssignment1_0_0_13(&tmp[0], &C[(((N * (b_i + d_i)) + b_j) + d_j)], M, N, b_i, b_j, d_i, d_j);
              }
            }
          }
        }
      }
    }
  }
}

void __dace_runkernel_dace_naive_matmul_258_0_0_3(const float *__restrict__ A,
                                                  const float *__restrict__ B,
                                                  float *__restrict__ C, int K,
                                                  int M, int N)
{
  dace_naive_matmul_258_0_0_3<<<dim3((N + 127) / 128, (M + 127) / 128, 1),
                                dim3(16, 16, 1)>>>(A, B, C, K, M, N);
}

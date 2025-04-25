
#include <cuda_runtime.h>
#include <dace/dace.h>


struct complex_gemm_soa_merged_auto_tiled_0_c2_state_t {
    dace::cuda::Context *gpu_context;
    dace::perf::Report report;
};


#include <chrono>
#include <cuda_runtime.h>


DACE_EXPORTED int __dace_init_cuda(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state, int K, int M, int N);
DACE_EXPORTED int __dace_exit_cuda(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state);



DACE_EXPORTED int __dace_init_cuda(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state, int K, int M, int N) {
    int count;

    // Check that we are able to run cuda code
    if (cudaGetDeviceCount(&count) != cudaSuccess)
    {
        printf("ERROR: GPU drivers are not configured or cuda-capable device "
               "not found\n");
        return 1;
    }
    if (count == 0)
    {
        printf("ERROR: No cuda-capable devices found\n");
        return 2;
    }

    // Initialize cuda before we run the application
    float *dev_X;
    DACE_GPU_CHECK(cudaMalloc((void **) &dev_X, 1));
    DACE_GPU_CHECK(cudaFree(dev_X));



    __state->gpu_context = new dace::cuda::Context(4, 11);

    // Create cuda streams and events
    for(int i = 0; i < 4; ++i) {
        DACE_GPU_CHECK(cudaStreamCreateWithFlags(&__state->gpu_context->internal_streams[i], cudaStreamNonBlocking));
        __state->gpu_context->streams[i] = __state->gpu_context->internal_streams[i]; // Allow for externals to modify streams
    }
    for(int i = 0; i < 11; ++i) {
        DACE_GPU_CHECK(cudaEventCreateWithFlags(&__state->gpu_context->events[i], cudaEventDisableTiming));
    }



    return 0;
}

DACE_EXPORTED int __dace_exit_cuda(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state) {


    // Synchronize and check for CUDA errors
    int __err = static_cast<int>(__state->gpu_context->lasterror);
    if (__err == 0)
        __err = static_cast<int>(cudaDeviceSynchronize());

    // Destroy cuda streams and events
    for(int i = 0; i < 4; ++i) {
        DACE_GPU_CHECK(cudaStreamDestroy(__state->gpu_context->internal_streams[i]));
    }
    for(int i = 0; i < 11; ++i) {
        DACE_GPU_CHECK(cudaEventDestroy(__state->gpu_context->events[i]));
    }

    delete __state->gpu_context;
    return __err;
}

DACE_EXPORTED bool __dace_gpu_set_stream(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state, int streamid, gpuStream_t stream)
{
    if (streamid < 0 || streamid >= 4)
        return false;

    __state->gpu_context->streams[streamid] = stream;

    return true;
}

DACE_EXPORTED void __dace_gpu_set_all_streams(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state, gpuStream_t stream)
{
    for (int i = 0; i < 4; ++i)
        __state->gpu_context->streams[i] = stream;
}

__global__ void __launch_bounds__(256) GPU_DeviceMap_0_0_30(const float * __restrict__ Aim, const float * __restrict__ Ar, const float * __restrict__ Bim, const float * __restrict__ Br, float * __restrict__ Cim, float * __restrict__ Cr, int K, int M, int N) {
    {
        {
            int b_j = (64 * blockIdx.x);
            int b_i = (16 * blockIdx.y);
            {
                {
                    {
                        int d_j = ((2 * threadIdx.x) + b_j);
                        int d_i = ((2 * threadIdx.y) + b_i);
                        if (d_j >= b_j) {
                            if (d_i >= b_i) {
                                {
                                    for (auto k = 0; k < K; k += 16) {
                                        __shared__ float shr_Bim[1024];
                                        __shared__ float shr_Aim[256];
                                        __shared__ float shr_Br[1024];
                                        __shared__ float shr_Ar[256];
                                        {
                                            const float* IN_Bim = &Bim[((N * k) + d_j)];
                                            float* OUT_Bim = shr_Bim;

                                            ///////////////////
                                            // Bim[K,N]
                                            // shr_Bim[16,64]
                                            // Strides // shr_Bim[64,1]
                                            // Inner Loop Condition: k <= K - 16 && b_j <= N - 64
                                            const int tid = threadIdx.x + blockDim.x * threadIdx.y + (blockDim.x * blockDim.y) * threadIdx.z;
                                            // Num Threads: 256, Line Length (max): 64
                                            // load multiple lines at a time 4
                                            const int line_offset = tid % 64;
                                            const int line_num = tid / 64;
                                            #pragma unroll
                                            for (int i0 = 0; i0 < 16; i0 += 4) {
                                                //64, (64, 1),  + ((i0) * 64)
                                                //N, (N, 1),  + ((i0) * N)
                                                shr_Bim[line_num*64 + line_offset + ((i0) * 64)] = Bim[(N*(k))+(1*(b_j)) + line_num*N + line_offset + ((i0) * N)];
                                            }
                                            ///////////////////

                                        }
                                        {
                                            const float* IN_Aim = &Aim[((K * d_i) + k)];
                                            float* OUT_Aim = shr_Aim;

                                            ///////////////////
                                            // Aim[M,K]
                                            // shr_Aim[16,16]
                                            // Strides // shr_Aim[16,1]
                                            // Inner Loop Condition: b_i <= M - 16 && k <= K - 16
                                            const int tid = threadIdx.x + blockDim.x * threadIdx.y + (blockDim.x * blockDim.y) * threadIdx.z;
                                            // Num Threads: 256, Line Length (max): 16
                                            // load multiple lines at a time 16
                                            const int line_offset = tid % 16;
                                            const int line_num = tid / 16;
                                            int i0 = 0;
                                            //16, (16, 1),
                                            //K, (K, 1),
                                            shr_Aim[line_num*16 + line_offset] = Aim[(K*(b_i))+(1*(k)) + line_num*K + line_offset];
                                            ///////////////////

                                        }
                                        {
                                            const float* IN_Br = &Br[((N * k) + d_j)];
                                            float* OUT_Br = shr_Br;

                                            ///////////////////
                                            // Br[K,N]
                                            // shr_Br[16,64]
                                            // Strides // shr_Br[64,1]
                                            // Inner Loop Condition: k <= K - 16 && b_j <= N - 64
                                            const int tid = threadIdx.x + blockDim.x * threadIdx.y + (blockDim.x * blockDim.y) * threadIdx.z;
                                            // Num Threads: 256, Line Length (max): 64
                                            // load multiple lines at a time 4
                                            const int line_offset = tid % 64;
                                            const int line_num = tid / 64;
                                            #pragma unroll
                                            for (int i0 = 0; i0 < 16; i0 += 4) {
                                                //64, (64, 1),  + ((i0) * 64)
                                                //N, (N, 1),  + ((i0) * N)
                                                shr_Br[line_num*64 + line_offset + ((i0) * 64)] = Br[(N*(k))+(1*(b_j)) + line_num*N + line_offset + ((i0) * N)];
                                            }
                                            ///////////////////

                                        }
                                        {
                                            const float* IN_Ar = &Ar[((K * d_i) + k)];
                                            float* OUT_Ar = shr_Ar;

                                            ///////////////////
                                            // Ar[M,K]
                                            // shr_Ar[16,16]
                                            // Strides // shr_Ar[16,1]
                                            // Inner Loop Condition: b_i <= M - 16 && k <= K - 16
                                            const int tid = threadIdx.x + blockDim.x * threadIdx.y + (blockDim.x * blockDim.y) * threadIdx.z;
                                            // Num Threads: 256, Line Length (max): 16
                                            // load multiple lines at a time 16
                                            const int line_offset = tid % 16;
                                            const int line_num = tid / 16;
                                            int i0 = 0;
                                            //16, (16, 1),
                                            //K, (K, 1),
                                            shr_Ar[line_num*16 + line_offset] = Ar[(K*(b_i))+(1*(k)) + line_num*K + line_offset];
                                            __syncthreads();
                                            ///////////////////

                                        }
                                        {
                                            #pragma unroll
                                            for (auto i = d_i; i < (d_i + 2); i += 1) {
                                                #pragma unroll
                                                for (auto j = d_j; j < (d_j + 2); j += 1) {
                                                    {
                                                        #pragma unroll
                                                        for (auto tk = 0; tk < 16; tk += 1) {
                                                            float __tmp2;
                                                            float tmp1;
                                                            float __tmp4;
                                                            float tmp2;
                                                            float __tmp6;
                                                            float tmp3 = 0;
                                                            float __tmp8;
                                                            float tmp4 = 0;
                                                            {
                                                                float __in2 = shr_Bim[(((- d_j) + j) + (64 * tk))];
                                                                float __in1 = shr_Aim[(((-16 * d_i) + (16 * i)) + tk)];
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Mult_)
                                                                __out = (__in1 * __in2);
                                                                ///////////////////

                                                                __tmp4 = __out;
                                                            }
                                                            {
                                                                float __in2 = __tmp4;
                                                                float __in1 = Cim[((N * i) + j)];
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Sub_)
                                                                __out = (__in1 - __in2);
                                                                ///////////////////

                                                                tmp2 = __out;
                                                            }
                                                            {
                                                                float __in2 = shr_Bim[(((- d_j) + j) + (64 * tk))];
                                                                float __in1 = shr_Ar[(((-16 * d_i) + (16 * i)) + tk)];
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Mult_)
                                                                __out = (__in1 * __in2);
                                                                ///////////////////

                                                                __tmp8 = __out;
                                                            }
                                                            {
                                                                float __in1 = tmp2;
                                                                float __in2 = __tmp8;
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Add_)
                                                                __out = (__in1 + __in2);
                                                                ///////////////////

                                                                tmp4 = __out;
                                                            }
                                                            {
                                                                float _in = tmp4;
                                                                float _out;

                                                                ///////////////////
                                                                // Tasklet code (assign)
                                                                _out = _in;
                                                                ///////////////////

                                                                Cim[((N * i) + j)] = _out;
                                                            }
                                                            {
                                                                float __in1 = shr_Aim[(((-16 * d_i) + (16 * i)) + tk)];
                                                                float __in2 = shr_Br[(((- d_j) + j) + (64 * tk))];
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Mult_)
                                                                __out = (__in1 * __in2);
                                                                ///////////////////

                                                                __tmp6 = __out;
                                                            }
                                                            {
                                                                float __in2 = shr_Br[(((- d_j) + j) + (64 * tk))];
                                                                float __in1 = shr_Ar[(((-16 * d_i) + (16 * i)) + tk)];
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Mult_)
                                                                __out = (__in1 * __in2);
                                                                ///////////////////

                                                                __tmp2 = __out;
                                                            }
                                                            {
                                                                float __in2 = __tmp2;
                                                                float __in1 = Cr[((N * i) + j)];
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Add_)
                                                                __out = (__in1 + __in2);
                                                                ///////////////////

                                                                tmp1 = __out;
                                                            }
                                                            {
                                                                float __in1 = tmp1;
                                                                float __in2 = __tmp6;
                                                                float __out;

                                                                ///////////////////
                                                                // Tasklet code (_Add_)
                                                                __out = (__in1 + __in2);
                                                                ///////////////////

                                                                tmp3 = __out;
                                                            }
                                                            {
                                                                float _in = tmp3;
                                                                float _out;

                                                                ///////////////////
                                                                // Tasklet code (assign)
                                                                _out = _in;
                                                                ///////////////////

                                                                Cr[((N * i) + j)] = _out;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_GPU_DeviceMap_0_0_30(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state, const float * __restrict__ Aim, const float * __restrict__ Ar, const float * __restrict__ Bim, const float * __restrict__ Br, float * __restrict__ Cim, float * __restrict__ Cr, int K, int M, int N);
void __dace_runkernel_GPU_DeviceMap_0_0_30(complex_gemm_soa_merged_auto_tiled_0_c2_state_t *__state, const float * __restrict__ Aim, const float * __restrict__ Ar, const float * __restrict__ Bim, const float * __restrict__ Br, float * __restrict__ Cim, float * __restrict__ Cr, int K, int M, int N)
{

    if ((int_ceil(N, 64)) == 0 || (int_ceil(M, 16)) == 0) {

        return;
    }

    void  *GPU_DeviceMap_0_0_30_args[] = { (void *)&Aim, (void *)&Ar, (void *)&Bim, (void *)&Br, (void *)&Cim, (void *)&Cr, (void *)&K, (void *)&M, (void *)&N };
    gpuError_t __err = cudaLaunchKernel((void*)GPU_DeviceMap_0_0_30, dim3(int_ceil(N, 64), int_ceil(M, 16), 1), dim3(32, 8, 1), GPU_DeviceMap_0_0_30_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "GPU_DeviceMap_0_0_30", int_ceil(N, 64), int_ceil(M, 16), 1, 32, 8, 1);
}


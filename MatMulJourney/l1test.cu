#include <cuda_runtime.h>
#include <iostream>

constexpr long long N = 1024 * 1024 * 512;
constexpr long long E = 4;

#define checkCudaError(ans)                   \
    {                                         \
        gpuAssert((ans), __FILE__, __LINE__); \
    }
inline void gpuAssert(cudaError_t code, const char *file, int line, bool abort = true)
{
    if (code != cudaSuccess)
    {
        fprintf(stderr, "GPUassert: %s %s %d\n", cudaGetErrorString(code), file, line);
        if (abort)
            exit(code);
    }
}

template <long long LoadSize, long long NumThreads>
__device__ __forceinline__ void loadToSharedMemory(const float *input, float *sharedMem, const long long globalOffset)
{
    static_assert(LoadSize % NumThreads == 0 && LoadSize >= NumThreads);
    const long long index = threadIdx.x;

    for (long long i = 0; i < LoadSize; i += NumThreads)
    {
        sharedMem[index + i] = input[globalOffset + index + i];
    }

    __syncthreads();
}

template <long long NumThreads>
__global__ void sum4_front(const float *input, float *output, long long vectorSize)
{
    const long long startOffset = blockIdx.x * NumThreads * E;
    const long long globalIdx = blockIdx.x * NumThreads + threadIdx.x;
    const long long startIdx = threadIdx.x * E;

    __shared__ float tile[E * NumThreads];
    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset);

    float sum = 0.0f;
    const float4 *access = reinterpret_cast<const float4 *>(&tile[startIdx]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx] = sum;
}

template <long long NumThreads>
__global__ void sum4_back(const float *input, float *output, long long vectorSize)
{
    const long long startOffset = N - ((1 + blockIdx.x) * NumThreads * E);
    const long long globalIdx = ((N / E) - ((1 + blockIdx.x) * NumThreads)) + threadIdx.x;
    const long long startIdx = threadIdx.x * E;

    __shared__ float tile[E * NumThreads];
    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset);

    float sum = 0.0f;
    const float4 *access = reinterpret_cast<const float4 *>(&tile[startIdx]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx] = sum;
}

template <long long NumThreads>
__global__ void sum4_front_and_back(const float *input, float *output, long long vectorSize)
{
    const long long startOffset = blockIdx.x * NumThreads;
    const long long globalIdx = blockIdx.x * blockDim.x + threadIdx.x;
    const long long startIdx = threadIdx.x * E;

    __shared__ float tile[E * NumThreads];
    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset);

    float sum = 0.0f;
    const float4 *access = nullptr;

    access = reinterpret_cast<const float4 *>(&tile[startIdx]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx] = sum;

    __syncthreads();

    const long long startOffset2 = N - ((1 + blockIdx.x) * NumThreads * E);
    const long long globalIdx2 = ((N / E) - ((1 + blockIdx.x) * NumThreads)) + threadIdx.x;
    const long long startIdx2 = threadIdx.x * E;

    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset2);

    access = reinterpret_cast<const float4 *>(&tile[startIdx2]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx2] = sum;
}

template <long long NumThreads>
__global__ void sum4_front_and_front(const float *input, float *output, long longvectorSize)
{
    const long long startOffset = blockIdx.x * NumThreads;
    const long long globalIdx = blockIdx.x * blockDim.x + threadIdx.x;
    const long long startIdx = threadIdx.x * E;

    __shared__ float tile[E * NumThreads];
    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset);

    float sum = 0.0f;
    const float4 *access = nullptr;

    access = reinterpret_cast<const float4 *>(&tile[startIdx]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx] = sum;

    __syncthreads();

    const long long startOffset2 = blockIdx.x * NumThreads;
    const long long globalIdx2 = blockIdx.x * blockDim.x + threadIdx.x;
    const long long startIdx2 = threadIdx.x * E;

    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset2);

    access = reinterpret_cast<const float4 *>(&tile[startIdx2]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx2] = sum;
}

template <long long NumThreads>
__global__ void sum4_front_and_front_double(const float *input, const float *input2, float *output, long longvectorSize)
{
    const long long startOffset = blockIdx.x * NumThreads;
    const long long globalIdx = blockIdx.x * blockDim.x + threadIdx.x;
    const long long startIdx = threadIdx.x * E;

    __shared__ float tile[E * NumThreads];
    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset);

    float sum = 0.0f;
    const float4 *access = nullptr;

    access = reinterpret_cast<const float4 *>(&tile[startIdx]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx] = sum;

    __syncthreads();



    const long long startOffset2 = blockIdx.x * NumThreads;
    const long long globalIdx2 = blockIdx.x * blockDim.x + threadIdx.x;
    const long long startIdx2 = threadIdx.x * E;
    loadToSharedMemory<E * NumThreads, NumThreads>(input2, tile, startOffset2);

    access = reinterpret_cast<const float4 *>(&tile[startIdx2]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx2] = sum;
}

template <long long NumThreads>
__global__ void sum4_front_and_back_double(const float *input, const float *input2, float *output, long longvectorSize)
{
    const long long startOffset = blockIdx.x * NumThreads;
    const long long globalIdx = blockIdx.x * blockDim.x + threadIdx.x;
    const long long startIdx = threadIdx.x * E;

    __shared__ float tile[E * NumThreads];
    loadToSharedMemory<E * NumThreads, NumThreads>(input, tile, startOffset);

    float sum = 0.0f;
    const float4 *access = nullptr;

    access = reinterpret_cast<const float4 *>(&tile[startIdx]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx] = sum;

    __syncthreads();

    const long long startOffset2 = N - ((1 + blockIdx.x) * NumThreads * E);
    const long long globalIdx2 = ((N / E) - ((1 + blockIdx.x) * NumThreads)) + threadIdx.x;
    const long long startIdx2 = threadIdx.x * E;
    loadToSharedMemory<E * NumThreads, NumThreads>(input2, tile, startOffset2);

    access = reinterpret_cast<const float4 *>(&tile[startIdx2]);
    sum = access->x + access->w + access->y + access->z;
    output[globalIdx2] = sum;
}

int main()
{
    // Host vector
    static_assert(N % E == 0);
    float *h_input = new float[N];
    float *h_input2 = new float[N];

    float *d_input, *d_output, *d_input2;

    constexpr long long NT = 256;

    cudaEvent_t start, stop;
    float milliseconds = 0;

    checkCudaError(cudaEventCreate(&start));
    checkCudaError(cudaEventCreate(&stop));
    std::cout << "Let's start" << std::endl;

    checkCudaError(cudaMalloc(&d_input, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_input2, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_output, (N / E) * sizeof(float)));

    checkCudaError(cudaEventRecord(start));
    sum4_front<NT><<<N / (4 * NT), NT>>>(d_input, d_output, N);
    sum4_front<NT><<<N / (4 * NT), NT>>>(d_input, d_output, N);
    checkCudaError(cudaDeviceSynchronize());
    checkCudaError(cudaEventRecord(stop));
    checkCudaError(cudaEventSynchronize(stop));
    checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop));
    std::cout << "Time for sum4_front and sum4_front: " << milliseconds << " ms" << std::endl;
    checkCudaError(cudaEventDestroy(start));
    checkCudaError(cudaEventDestroy(stop));

    cudaFree(d_input);
    cudaFree(d_input2);
    cudaFree(d_output);
    cudaDeviceReset();
    checkCudaError(cudaMalloc(&d_input, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_input2, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_output, (N / E) * sizeof(float)));
    checkCudaError(cudaEventCreate(&start));
    checkCudaError(cudaEventCreate(&stop));

    checkCudaError(cudaEventRecord(start));
    sum4_front<NT><<<N / (4 * NT), NT>>>(d_input, d_output, N);
    sum4_back<NT><<<N / (4 * NT), NT>>>(d_input, d_output, N);
    checkCudaError(cudaDeviceSynchronize());
    checkCudaError(cudaEventRecord(stop));
    checkCudaError(cudaEventSynchronize(stop));
    checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop));
    std::cout << "Time for sum4_front and sum4_back: " << milliseconds << " ms" << std::endl;
    checkCudaError(cudaEventDestroy(start));
    checkCudaError(cudaEventDestroy(stop));

    cudaFree(d_input);
    cudaFree(d_input2);
    cudaFree(d_output);
    cudaDeviceReset();
    checkCudaError(cudaMalloc(&d_input, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_input2, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_output, (N / E) * sizeof(float)));
    checkCudaError(cudaEventCreate(&start));
    checkCudaError(cudaEventCreate(&stop));

    checkCudaError(cudaEventRecord(start));
    sum4_front_and_back<NT><<<N / (4 * NT), NT>>>(d_input, d_output, N);
    checkCudaError(cudaDeviceSynchronize());
    checkCudaError(cudaEventRecord(stop));
    checkCudaError(cudaEventSynchronize(stop));
    checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop));
    std::cout << "Time for sum4_front_and_back: " << milliseconds << " ms" << std::endl;
    checkCudaError(cudaEventDestroy(start));
    checkCudaError(cudaEventDestroy(stop));

    cudaFree(d_input);
    cudaFree(d_input2);
    cudaFree(d_output);
    cudaDeviceReset();
    checkCudaError(cudaMalloc(&d_input, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_input2, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_output, (N / E) * sizeof(float)));
    checkCudaError(cudaEventCreate(&start));
    checkCudaError(cudaEventCreate(&stop));

    checkCudaError(cudaEventRecord(start));
    sum4_front_and_front<NT><<<N / (4 * NT), NT>>>(d_input, d_output, N);
    checkCudaError(cudaDeviceSynchronize());
    checkCudaError(cudaEventRecord(stop));
    checkCudaError(cudaEventSynchronize(stop));
    checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop));
    std::cout << "Time for sum4_front_and_front: " << milliseconds << " ms" << std::endl;
    checkCudaError(cudaEventDestroy(start));
    checkCudaError(cudaEventDestroy(stop));

    cudaFree(d_input);
    cudaFree(d_input2);
    cudaFree(d_output);
    cudaDeviceReset();
    checkCudaError(cudaMalloc(&d_input, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_input2, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_output, (N / E) * sizeof(float)));
    checkCudaError(cudaEventCreate(&start));
    checkCudaError(cudaEventCreate(&stop));

    checkCudaError(cudaEventRecord(start));
    sum4_front_and_front_double<NT><<<N / (4 * NT), NT>>>(d_input, d_input2, d_output, N);
    checkCudaError(cudaDeviceSynchronize());
    checkCudaError(cudaEventRecord(stop));
    checkCudaError(cudaEventSynchronize(stop));
    checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop));
    std::cout << "Time for sum4_front_and_front_double: " << milliseconds << " ms" << std::endl;
    checkCudaError(cudaEventDestroy(start));
    checkCudaError(cudaEventDestroy(stop));

    cudaFree(d_input);
    cudaFree(d_input2);
    cudaFree(d_output);
    cudaDeviceReset();
    checkCudaError(cudaMalloc(&d_input, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_input2, N * sizeof(float)));
    checkCudaError(cudaMalloc(&d_output, (N / E) * sizeof(float)));
    checkCudaError(cudaEventCreate(&start));
    checkCudaError(cudaEventCreate(&stop));

    checkCudaError(cudaEventRecord(start));
    sum4_front_and_back_double<NT><<<N / (4 * NT), NT>>>(d_input, d_input2, d_output, N);
    checkCudaError(cudaDeviceSynchronize());
    checkCudaError(cudaEventRecord(stop));
    checkCudaError(cudaEventSynchronize(stop));
    checkCudaError(cudaEventElapsedTime(&milliseconds, start, stop));
    std::cout << "Time for sum4_front_and_back_double: " << milliseconds << " ms" << std::endl;

    // Cleanup
    checkCudaError(cudaEventDestroy(start));
    checkCudaError(cudaEventDestroy(stop));

    // Clean up

    delete[] h_input;

    return 0;
}
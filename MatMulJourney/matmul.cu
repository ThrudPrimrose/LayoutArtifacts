#include <iostream>
#include <cuda_runtime.h>
#include <fstream>
#include <iostream>
#include <fstream>
#include <sstream>

#include "util.h"
#include "device_properties.cuh"
#include <cublas_v2.h>
#include "2dblocktiling.cuh"
#include "2dblocktiling2.cuh"
#include "2dblocktiling3.cuh"
#include "2dblocktiling4.cuh"
#include "2dblocktiling5.cuh"
#include "2dblocktiling6.cuh"
#include "2dblocktiling7.cuh"
#include "cg.cuh"

#ifdef PTY
constexpr uint tY = PTY;
#else
constexpr uint tY = 16;
#endif
#ifdef PTY
constexpr uint tX = PTX;
#else
constexpr uint tX = 16;
#endif
#ifdef PBK
constexpr uint bK = PBK;
#else
constexpr uint bK = 16;
#endif
#ifdef PTM
constexpr uint tM = PTM;
#else
constexpr uint tM = 8;
#endif
#ifdef PTN
constexpr uint tN = PTN;
#else
constexpr uint tN = 8;
#endif
static_assert(tN != 0);
static_assert(tM != 0);
static_assert(tX != 0);
static_assert(tY != 0);
static_assert(bK != 0);

// Define matrix dimensions as constexpr
constexpr uint64_t M = 16384;
constexpr uint64_t K = 16384;
constexpr uint64_t N = 16384;
constexpr double ops = M * N * K * 2;
constexpr double byte_accessed = sizeof(float) * (M * N + K * N + M * K);

#define RUN_AND_MEASURE(name, file, kernel)                                                                                         \
    {                                                                                                                               \
        cudaEvent_t beg, end;                                                                                                       \
        CHECK_CUDA_ERR(cudaEventCreate(&beg));                                                                                      \
        CHECK_CUDA_ERR(cudaEventCreate(&end));                                                                                      \
        float ms;                                                                                                                   \
        CHECK_CUDA_ERR(cudaEventRecord(beg));                                                                                       \
        kernel();                                                                                                                   \
        CHECK_CUDA_ERR(cudaEventRecord(end));                                                                                       \
        CHECK_CUDA_ERR(cudaDeviceSynchronize());                                                                                    \
        CHECK_CUDA_ERR(cudaEventElapsedTime(&ms, beg, end));                                                                        \
        cudaError_t err = cudaGetLastError();                                                                                       \
        if (err != cudaSuccess)                                                                                                     \
        {                                                                                                                           \
            printf("Kernel launch error: %s\n", cudaGetErrorString(err));                                                           \
        }                                                                                                                           \
        cudaDeviceSynchronize();                                                                                                    \
        CHECK_CUDA_ERR(cudaMemcpy(h_C, d_C, size_C, cudaMemcpyDeviceToHost));                                                       \
        bool print = true;                                                                                                          \
        float max_diff = 0.f;                                                                                                       \
        for (size_t i = 0; i < M * N; i++)                                                                                          \
        {                                                                                                                           \
            float diff = ref_C[i] - h_C[i];                                                                                         \
            float abs_diff = diff > 0.f ? diff : -diff;                                                                             \
            if (abs_diff > max_diff)                                                                                                \
            {                                                                                                                       \
                max_diff = abs_diff;                                                                                                \
            }                                                                                                                       \
            if (print && (diff < -5.0 || diff > 5.0))                                                                               \
            {                                                                                                                       \
                std::cout << ("Difference too huge at " + std::to_string(i) +                                                       \
                              " for (" + name + ") value should be: " + std::to_string(ref_C[i]) + " is " + std::to_string(h_C[i])) \
                          << std::endl;                                                                                             \
                print = false;                                                                                                      \
            }                                                                                                                       \
        }                                                                                                                           \
        {                                                                                                                           \
            std::cout << "Max diff for (" << name << "): " << std::to_string(max_diff) << std::endl;                                \
            print = false;                                                                                                          \
        }                                                                                                                           \
                                                                                                                                    \
        double time = static_cast<double>(ms) * 1e-3;                                                                               \
        constexpr double op_intensity = ops / byte_accessed;                                                                        \
        double bandwidth, flops;                                                                                                    \
        get_max_bandwidth_and_flops(bandwidth, flops);                                                                              \
        double best_perf = std::min(op_intensity * bandwidth, flops);                                                               \
                                                                                                                                    \
        std::cout << "Peak Achievable perf.:" << best_perf << "GFLOP/s" << std::endl;                                               \
        double achieved_perf = (ops * 1e-9) / time;                                                                                 \
        std::cout << "Achieved perf. of kernel " << name << ": " << achieved_perf << "GFLOP/s" << std::endl;                        \
        double percentage_of_peak = (100.0 * achieved_perf) / best_perf;                                                            \
        std::cout << percentage_of_peak << "% of the achievable peak" << std::endl;                                                 \
        CHECK_CUDA_ERR(cudaMemcpy(d_C, h_C, size_C, cudaMemcpyHostToDevice));                                                       \
        std::cout << std::endl                                                                                                      \
                  << std::endl;                                                                                                     \
        file << name << ','                                                                                                         \
             << std::to_string(tY) << ','                                                                                           \
             << std::to_string(tX) << ','                                                                                           \
             << std::to_string(bK) << ','                                                                                           \
             << std::to_string(tM) << ','                                                                                           \
             << std::to_string(tN) << ','                                                                                           \
             << ((err != cudaSuccess) ? "-1.0" : std::to_string(time)) << ','                                                       \
             << ((err != cudaSuccess) ? "-1.0" : std::to_string(achieved_perf)) << ','                                              \
             << ((err != cudaSuccess) ? "-1.0" : std::to_string(percentage_of_peak)) << '\n';                                       \
    }

int main()
{
    // Allocate host memory
    size_t size_A = M * K * sizeof(float);
    size_t size_B = K * N * sizeof(float);
    size_t size_C = M * N * sizeof(float);

    float *h_A = (float *)malloc(size_A);
    float *h_B = (float *)malloc(size_B);
    float *h_C = (float *)malloc(size_C);
    float *ref_C = (float *)malloc(size_C);

    // Read matrices A and B from binary files
    readBinaryFile("matrix_A.bin", h_A, size_A);
    readBinaryFile("matrix_B.bin", h_B, size_B);
    readBinaryFile("matrix_C_ref.bin", ref_C, size_C);

    // Allocate device memory
    float *d_A, *d_B, *d_C;
    CHECK_CUDA_ERR(cudaMalloc((void **)&d_A, size_A));
    CHECK_CUDA_ERR(cudaMalloc((void **)&d_B, size_B));
    CHECK_CUDA_ERR(cudaMalloc((void **)&d_C, size_C));

    // Copy matrices A and B to device
    CHECK_CUDA_ERR(cudaMemcpy(d_A, h_A, size_A, cudaMemcpyHostToDevice));
    CHECK_CUDA_ERR(cudaMemcpy(d_B, h_B, size_B, cudaMemcpyHostToDevice));
    // auto naive = [d_A, d_B, d_C, ref_C](){ matmul_naive_launcher<32, 32>(d_A, d_B, d_C, M, N, K); cudaMemcpy(ref_C, d_C, M * N * sizeof(float), cudaMemcpyDeviceToHost); };
    // RUN_AND_MEASURE("naive", naive);
    cublasHandle_t handle;
    cublasCreate(&handle);
    auto cublas = [d_A, d_B, d_C, ref_C, &handle]()
    {
        float alpha = 1.0f;
        float beta = 0.0f;
        cublasSgemm(handle, CUBLAS_OP_N, CUBLAS_OP_N,
                    M, N, K,
                    &alpha,
                    d_B, K,
                    d_A, M,
                    &beta,
                    d_C, M);
        CHECK_CUDA_ERR(cudaMemcpy(ref_C, d_C, M * N, cudaMemcpyDeviceToHost));
    };
    std::string identifier_cublas("cuBLAS");
    std::string identifier_1("Outer-Product + No Remainder");
    std::string identifier_2("Inner Product + No Remainder");
    std::string identifier_3("Inner Product + Remainder");
    std::string identifier_4("Inner Product DaCe style");
    std::string identifier_5("Inner Product + Store");
    std::string identifier_6("Inner Product + Store (LL1)");
    std::string identifier_7("Inner Product + Store (LL2)");
    std::string identifier_8("Inner Product + Store (LL4)");
    std::string identifier_9("Inner Product + Store (LL8)");
    std::string identifier_10("Inner Product + Store (LL16)");
    std::string identifier_11("Inner Product + Store + Mem Reuse (LL1)");
    std::string identifier_12("Inner Product + Store + Mem Reuse (LL2)");
    std::string identifier_13("Inner Product + Store + Mem Reuse (LL4)");
    std::string identifier_14("Inner Product + Store + Mem Reuse (LL8)");
    std::string identifier_15("Inner Product + Store + Mem Reuse (LL16)");
    std::string identifier_cg("Inner Product + MiG?");
    std::ofstream _file("output.csv", std::ios::app);
    int sharedMemoryPerBlock;
    cudaDeviceProp deviceProp;
    cudaGetDeviceProperties(&deviceProp, 0);
    sharedMemoryPerBlock = deviceProp.sharedMemPerBlock;
    std::cout << "Device " << 0 << " has " << sharedMemoryPerBlock
              << " bytes of shared memory per block." << std::endl;
    constexpr int bm = tY * tM;
    constexpr int bn = tX * tN;
    std::cout << "Too much shared memory used? " << (4 * bm * bK + 4 * bK * bn + 4 * bm * bn > sharedMemoryPerBlock) << std::endl
              << std::endl;
    RUN_AND_MEASURE(identifier_cublas, _file, cublas);
    // auto __2d_block_tiling = [d_A, d_B, d_C](){ _2d_block_tiling_launcher<tY, tX, bK, tM, tN>(d_A, d_B, d_C, M, N, K); };
    // RUN_AND_MEASURE(identifier_1, _file, __2d_block_tiling);
    auto __2d_block_tiling2 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher2<tY, tX, bK, tM, tN>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_2, _file, __2d_block_tiling2);
    // auto __2d_block_tiling3 = [d_A, d_B, d_C](){ _2d_block_tiling_launcher3<tY, tX, bK, tM, tN>(d_A, d_B, d_C, M, N, K); };
    // RUN_AND_MEASURE(identifier_3, _file, __2d_block_tiling3);
    auto __2d_block_tiling4 = [d_A, d_B, d_C]()
    { __dace_runkernel_dace_naive_matmul_258_0_0_3(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_4, _file, __2d_block_tiling4);
    //auto __2d_block_tiling5 = [d_A, d_B, d_C]()
    //{ _2d_block_tiling_launcher5<tY, tX, bK, tM, tN / 2>(d_A, d_B, d_C, M, N, K); };
    //RUN_AND_MEASURE(identifier_5, _file, __2d_block_tiling5);
    auto __2d_block_tiling6 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher6<tY, tX, bK, tM, tN, 1>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_6, _file, __2d_block_tiling6);
    auto __2d_block_tiling7 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher6<tY, tX, bK, tM, tN, 2>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_7, _file, __2d_block_tiling7);
    auto __2d_block_tiling8 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher6<tY, tX, bK, tM, tN, 4>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_8, _file, __2d_block_tiling8);
    // auto __2d_block_tiling9 = [d_A, d_B, d_C](){  _2d_block_tiling_launcher6<tY, tX, bK, tM, tN/2, 8>(d_A, d_B, d_C, M, N, K); };
    // RUN_AND_MEASURE(identifier_9, _file, __2d_block_tiling9);

    auto __2d_block_tiling11 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher7<tY, tX, bK, tM, tN, 1>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_11, _file, __2d_block_tiling11);
    auto __2d_block_tiling12 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher7<tY, tX, bK, tM, tN, 2>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_12, _file, __2d_block_tiling12);
    auto __2d_block_tiling13 = [d_A, d_B, d_C]()
    { _2d_block_tiling_launcher7<tY, tX, bK, tM, tN, 4>(d_A, d_B, d_C, M, N, K); };
    RUN_AND_MEASURE(identifier_13, _file, __2d_block_tiling13);
    // auto __2d_block_tiling14 = [d_A, d_B, d_C](){  _2d_block_tiling_launcher7<tY, tX, bK, tM, tN, 8>(d_A, d_B, d_C, M, N, K); };
    // RUN_AND_MEASURE(identifier_14, _file, __2d_block_tiling14);

    cudaStream_t stream1, stream2;
    cudaStreamCreate(&stream1);
    cudaStreamCreate(&stream2);
    auto cg_lambda = [d_A, d_B, d_C, &stream1, &stream2](){
        matmul_cg_launcher<tY, tX, bK, tM, tN>(stream1, d_A, d_B + (N/2), d_C + (N/2), M, N/2, K, K, N, N);
        matmul_cg_launcher<tY, tX, bK, tM, tN>(stream2, d_A, d_B, d_C, M, N/2, K, K, N, N);
    };
    RUN_AND_MEASURE(identifier_cg, _file, cg_lambda);

    // Clean up memory
    free(h_A);
    free(h_B);
    free(h_C);
    CHECK_CUDA_ERR(cudaFree(d_A));
    CHECK_CUDA_ERR(cudaFree(d_B));
    CHECK_CUDA_ERR(cudaFree(d_C));
    return 0;
}

// ault[23-24]	1.5 TB		32/64	Intel(R) 6130 @ 2.10GHz		4	NV V100(16GB PCIe)
//
// intelv100 up    1-infini    4:00:00     64 2:16:2       1 idle       ault24
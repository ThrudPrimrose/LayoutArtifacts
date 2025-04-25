/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:106:82: error: initialization is not supported for __shared__ variables.
  106 |                                         __shared__ __align__(64) dace::complex64 shr_B[2048];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:107:82: error: initialization is not supported for __shared__ variables.
  107 |                                         __shared__ __align__(64) dace::complex64 shr_A[16];
      |                                                                                  ^~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:108:82: error: initialization is not supported for __shared__ variables.
  108 |                                         __shared__ __align__(64) dace::complex64 shr_C[128];
      |                                                                                  ^~~~~
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2


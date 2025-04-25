/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 224, in configure_and_compile
    _run_liveoutput(cmake_command, shell=True, cwd=build_folder, output_stream=output_stream)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake  "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen" -DDACE_SRC_DIR="/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src" -DDACE_FILES="cpu/complex_gemm_soa_merged_SoA_2048_16384_16384.cpp;cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_cuda.cpp" -DDACE_PROGRAM_NAME=complex_gemm_soa_merged_SoA_2048_16384_16384 -DDACE_ENV_CMAKE_FILES="" -DDACE_ENV_COMPILE_FLAGS="" -DDACE_ENV_INCLUDES="" -DDACE_ENV_LIBRARIES="" -DDACE_ENV_MINIMUM_VERSION=0 -DDACE_ENV_PACKAGES="" -DDACE_ENV_VAR_KEYS="" -DDACE_ENV_VAR_VALUES="" -DCMAKE_CXX_FLAGS="-std=c++14 -fPIC -Wall -Wextra -O3 -march=native -ffast-math -Wno-unused-parameter -Wno-unused-label" -DEXTRA_HIP_FLAGS="-std=c++17 -fPIC -O3 -ffast-math -Wno-unused-parameter --offload-arch=gfx906" -DDACE_LIBS="" -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--disable-new-dtags"' returned non-zero exit status 1.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 232, in configure_and_compile
    _run_liveoutput(cmake_command, shell=True, cwd=build_folder, output_stream=output_stream)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake  "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen" -DDACE_SRC_DIR="/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src" -DDACE_FILES="cpu/complex_gemm_soa_merged_SoA_2048_16384_16384.cpp;cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_cuda.cpp" -DDACE_PROGRAM_NAME=complex_gemm_soa_merged_SoA_2048_16384_16384 -DDACE_ENV_CMAKE_FILES="" -DDACE_ENV_COMPILE_FLAGS="" -DDACE_ENV_INCLUDES="" -DDACE_ENV_LIBRARIES="" -DDACE_ENV_MINIMUM_VERSION=0 -DDACE_ENV_PACKAGES="" -DDACE_ENV_VAR_KEYS="" -DDACE_ENV_VAR_VALUES="" -DCMAKE_CXX_FLAGS="-std=c++14 -fPIC -Wall -Wextra -O3 -march=native -ffast-math -Wno-unused-parameter -Wno-unused-label" -DEXTRA_HIP_FLAGS="-std=c++17 -fPIC -O3 -ffast-math -Wno-unused-parameter --offload-arch=gfx906" -DDACE_LIBS="" -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--disable-new-dtags"' returned non-zero exit status 1.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 334, in <module>
    c2 = sdfg2.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 238, in configure_and_compile
    raise cgx.CompilerConfigurationError('Configuration failure:\n' + ex.output)
dace.codegen.exceptions.CompilerConfigurationError: Configuration failure:
-- The C compiler identification is Clang 17.0.6
-- The CXX compiler identification is Clang 17.0.6
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-17.0.6-q35ikc2dbcepmwzwtoouyn7djtc7lrpb/bin/clang - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-17.0.6-q35ikc2dbcepmwzwtoouyn7djtc7lrpb/bin/clang++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE
-- Found OpenMP_CXX: -fopenmp=libomp (found version "5.1")
-- Found OpenMP: TRUE (found version "5.1") found components: CXX
-- Performing Test HIP_CLANG_SUPPORTS_PARALLEL_JOBS
-- Performing Test HIP_CLANG_SUPPORTS_PARALLEL_JOBS - Failed
-- The HIP compiler identification is Clang 18.0.0
-- Detecting HIP compiler ABI info
-- Detecting HIP compiler ABI info - done
-- Check for working HIP compiler: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang++ - skipped
-- Detecting HIP compile features
-- Detecting HIP compile features - done
-- Local AMD HIP architectures detected: gfx942;
-- Configuring done (19.1s)
CMake Error at CMakeLists.txt:566 (add_library):
  Cannot find source file:
    /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384.cpp

  Tried extensions .c .C .c++ .cc .cpp .cxx .cu .mpp .m .M .mm .ixx .cppm
  .ccm .cxxm .c++m .h .hh .h++ .hm .hpp .hxx .in .txx .f .F .for .f77 .f90
  .f95 .f03 .hip .ispc


CMake Error at CMakeLists.txt:566 (add_library):
  No SOURCES given to target: complex_gemm_soa_merged_SoA_2048_16384_16384


CMake Generate step failed.  Build files cannot be regenerated correctly.

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 334, in <module>
    c2 = sdfg2.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
gmake[2]: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/build.make: Stale file handle
gmake[2]: *** No rule to make target 'CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/build.make'.  Stop.
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 224, in configure_and_compile
    _run_liveoutput(cmake_command, shell=True, cwd=build_folder, output_stream=output_stream)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake  "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen" -DDACE_SRC_DIR="/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src" -DDACE_FILES="cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp;cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp" -DDACE_PROGRAM_NAME=complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2 -DDACE_ENV_CMAKE_FILES="" -DDACE_ENV_COMPILE_FLAGS="" -DDACE_ENV_INCLUDES="" -DDACE_ENV_LIBRARIES="" -DDACE_ENV_MINIMUM_VERSION=0 -DDACE_ENV_PACKAGES="" -DDACE_ENV_VAR_KEYS="" -DDACE_ENV_VAR_VALUES="" -DCMAKE_CXX_FLAGS="-march=native -mtune=native -flto -Ofast -std=c++17 -fPIC" -DEXTRA_HIP_FLAGS="-std=c++17 -fPIC -O3 -ffast-math -Wno-unused-parameter --offload-arch=gfx906" -DDACE_LIBS="" -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--disable-new-dtags"' returned non-zero exit status 1.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 232, in configure_and_compile
    _run_liveoutput(cmake_command, shell=True, cwd=build_folder, output_stream=output_stream)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake  "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen" -DDACE_SRC_DIR="/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src" -DDACE_FILES="cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp;cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp" -DDACE_PROGRAM_NAME=complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2 -DDACE_ENV_CMAKE_FILES="" -DDACE_ENV_COMPILE_FLAGS="" -DDACE_ENV_INCLUDES="" -DDACE_ENV_LIBRARIES="" -DDACE_ENV_MINIMUM_VERSION=0 -DDACE_ENV_PACKAGES="" -DDACE_ENV_VAR_KEYS="" -DDACE_ENV_VAR_VALUES="" -DCMAKE_CXX_FLAGS="-march=native -mtune=native -flto -Ofast -std=c++17 -fPIC" -DEXTRA_HIP_FLAGS="-std=c++17 -fPIC -O3 -ffast-math -Wno-unused-parameter --offload-arch=gfx906" -DDACE_LIBS="" -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--disable-new-dtags"' returned non-zero exit status 1.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
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
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 238, in configure_and_compile
    raise cgx.CompilerConfigurationError('Configuration failure:\n' + ex.output)
dace.codegen.exceptions.CompilerConfigurationError: Configuration failure:
CMake Error at /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/cmake-3.30.5-xznhor3oz3j3y6rpah6c4jiwbmrfrz5m/share/cmake-3.30/Modules/CMakeDetermineCompilerId.cmake:400 (file):
  file failed to open for writing (No such file or directory):
    /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build/CMakeFiles/3.30.5/CompilerIdC/CMakeCCompilerId.c
Call Stack (most recent call first):
  /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/cmake-3.30.5-xznhor3oz3j3y6rpah6c4jiwbmrfrz5m/share/cmake-3.30/Modules/CMakeDetermineCompilerId.cmake:411 (CMAKE_DETERMINE_COMPILER_ID_WRITE)
  /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/cmake-3.30.5-xznhor3oz3j3y6rpah6c4jiwbmrfrz5m/share/cmake-3.30/Modules/CMakeDetermineCompilerId.cmake:8 (CMAKE_DETERMINE_COMPILER_ID_BUILD)
  /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/cmake-3.30.5-xznhor3oz3j3y6rpah6c4jiwbmrfrz5m/share/cmake-3.30/Modules/CMakeDetermineCompilerId.cmake:64 (__determine_compiler_id_test)
  /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/cmake-3.30.5-xznhor3oz3j3y6rpah6c4jiwbmrfrz5m/share/cmake-3.30/Modules/CMakeDetermineCCompiler.cmake:123 (CMAKE_DETERMINE_COMPILER_ID)
  CMakeLists.txt:3 (project)


-- The C compiler identification is Clang 17.0.6
-- The CXX compiler identification is Clang 17.0.6
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-17.0.6-q35ikc2dbcepmwzwtoouyn7djtc7lrpb/bin/clang - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-17.0.6-q35ikc2dbcepmwzwtoouyn7djtc7lrpb/bin/clang++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE
-- Found OpenMP_CXX: -fopenmp=libomp (found version "5.1")
-- Found OpenMP: TRUE (found version "5.1") found components: CXX
-- Performing Test HIP_CLANG_SUPPORTS_PARALLEL_JOBS
-- Performing Test HIP_CLANG_SUPPORTS_PARALLEL_JOBS - Failed
-- The HIP compiler identification is Clang 18.0.0
-- Detecting HIP compiler ABI info
-- Detecting HIP compiler ABI info - done
-- Check for working HIP compiler: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang++ - skipped
-- Detecting HIP compile features
-- Detecting HIP compile features - done
-- Local AMD HIP architectures detected: gfx942;
-- Configuring incomplete, errors occurred!

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14edff54f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x15081d34f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x1478f7a477e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55ce1b8080d0) on address 0x149db2100000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 42: 178032 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x561599904d60) on address 0x14aa53600000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 43: 180060 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x154cb26477e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:509:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  509 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:112:45: warning: loop not unrolled: the optimizer was unable to perform the requested transformation; the transformation might be disabled or specified as part of an unsupported transformation ordering [-Wpass-failed=transform-warning]
  112 |                                             for (int i = d_i; i < (d_i + 8); i += 1) {
      |                                             ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:114:49: warning: loop not unrolled: the optimizer was unable to perform the requested transformation; the transformation might be disabled or specified as part of an unsupported transformation ordering [-Wpass-failed=transform-warning]
  114 |                                                 for (int j = d_j; j < (d_j + 8); j += 1) {
      |                                                 ^
11 warnings generated when compiling for gfx942.
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:509:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  509 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:3:
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
9 warnings generated when compiling for host.
[ 60%] Linking HIP shared library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.so
clang++: error: no such file or directory: 'CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp.o'
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:117: libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.so] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55fdc51449e0) on address 0x148f04a04000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 45: 195316 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55c0141180a0) on address 0x146e35600000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 47: 11488 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:509:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  509 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
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
9 warnings generated when compiling for gfx942.
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:509:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  509 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
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
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.	Program arguments: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18 -cc1 -triple x86_64-unknown-linux-gnu -aux-triple amdgcn-amd-amdhsa -emit-obj -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp -mrelocation-model pic -pic-level 2 -fhalf-no-semantic-interposition -mframe-pointer=none -fmath-errno -fno-rounding-math -mconstructor-aliases -funwind-tables=2 -target-cpu x86-64 -tune-cpu generic -debug-info-kind=constructor -dwarf-version=5 -debugger-tuning=gdb -fdebug-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build -fcoverage-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build -resource-dir /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18 -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers -idirafter /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/hip-6.2.1-dnxqftoeqt7lshn7es5sf7vnjy2n65ep/include -include __clang_hip_runtime_wrapper.h -D DACE_BINARY_DIR=\"/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build\" -D USE_PROF_API=1 -D WITH_CUDA -D WITH_HIP -D __HIP_PLATFORM_AMD__=1 -D __HIP_ROCclr__=1 -D complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_EXPORTS -I /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include -D NDEBUG -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include -cxx-isystem . -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -O2 -std=gnu++17 -fdeprecated-macro -ferror-limit 19 -fhip-new-launch-api -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -vectorize-loops -vectorize-slp -fcuda-include-gpubinary /tmp/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda-ff84f7.hipfb -cuid=fda6ecb05f07ac5c -fcuda-allow-variadic-functions -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o -x hip /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp
1.	/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:56:80: current parser token 'int'
2.	/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:17:84: LLVM IR generation of declaration '__dace_init_cuda'
3.	/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:17:84: Generating code for declaration '__dace_init_cuda'
 #0 0x000000000252242b llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x252242b)
 #1 0x000000000251f95b SignalHandler(int) Signals.cpp:0:0
 #2 0x0000150fd985a910 __restore_rt (/lib64/libpthread.so.0+0x16910)
 #3 0x000000000247f92d llvm::MD5::body(llvm::ArrayRef<unsigned char>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x247f92d)
 #4 0x000000000248119f llvm::MD5::hash(llvm::ArrayRef<unsigned char>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x248119f)
 #5 0x0000000002787b8b clang::CodeGen::CGDebugInfo::computeChecksum(clang::FileID, llvm::SmallString<64u>&) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2787b8b)
 #6 0x000000000278976d clang::CodeGen::CGDebugInfo::getOrCreateFile(clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x278976d)
 #7 0x00000000027c742d clang::CodeGen::CGDebugInfo::emitFunctionStart(clang::GlobalDecl, clang::SourceLocation, clang::SourceLocation, clang::QualType, llvm::Function*, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x27c742d)
 #8 0x00000000028744b1 clang::CodeGen::CodeGenFunction::StartFunction(clang::GlobalDecl, clang::QualType, llvm::Function*, clang::CodeGen::CGFunctionInfo const&, clang::CodeGen::FunctionArgList const&, clang::SourceLocation, clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28744b1)
 #9 0x0000000002878a00 clang::CodeGen::CodeGenFunction::GenerateCode(clang::GlobalDecl, llvm::Function*, clang::CodeGen::CGFunctionInfo const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2878a00)
#10 0x00000000028ca51a clang::CodeGen::CodeGenModule::EmitGlobalFunctionDefinition(clang::GlobalDecl, llvm::GlobalValue*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28ca51a)
#11 0x00000000028c5f94 clang::CodeGen::CodeGenModule::EmitGlobalDefinition(clang::GlobalDecl, llvm::GlobalValue*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28c5f94)
#12 0x00000000028c67f3 clang::CodeGen::CodeGenModule::EmitGlobal(clang::GlobalDecl) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28c67f3)
#13 0x00000000028cda87 clang::CodeGen::CodeGenModule::EmitTopLevelDecl(clang::Decl*) (.part.0) CodeGenModule.cpp:0:0
#14 0x0000000002d54c70 (anonymous namespace)::CodeGeneratorImpl::HandleTopLevelDecl(clang::DeclGroupRef) ModuleBuilder.cpp:0:0
#15 0x0000000002d451b5 clang::BackendConsumer::HandleTopLevelDecl(clang::DeclGroupRef) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2d451b5)
#16 0x00000000045ce5c4 clang::ParseAST(clang::Sema&, bool, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45ce5c4)
#17 0x000000000300a679 clang::FrontendAction::Execute() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x300a679)
#18 0x0000000002f8b68b clang::CompilerInstance::ExecuteAction(clang::FrontendAction&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2f8b68b)
#19 0x00000000030cf782 clang::ExecuteCompilerInvocation(clang::CompilerInstance*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30cf782)
#20 0x0000000000c182a6 cc1_main(llvm::ArrayRef<char const*>, char const*, void*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc182a6)
#21 0x0000000000c10b18 ExecuteCC1Tool(llvm::SmallVectorImpl<char const*>&, llvm::ToolContext const&) driver.cpp:0:0
#22 0x0000000000c146dd clang_main(int, char**, llvm::ToolContext const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc146dd)
#23 0x0000000000b50983 main (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xb50983)
#24 0x0000150fd925224d __libc_start_main (/lib64/libc.so.6+0x3524d)
#25 0x0000000000c0f9ba _start /home/abuild/rpmbuild/BUILD/glibc-2.31/csu/../sysdeps/x86_64/start.S:122:0
clang++: error: unable to execute command: Bus error (core dumped)
clang++: error: clang frontend command failed due to signal (use -v to see invocation)
AMD clang version 18.0.0git
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin
clang++: note: diagnostic msg: Error generating preprocessed source(s).
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14ba5694f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x556b286dcfd0) on address 0x144082800000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 50: 20807 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14c6e634f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55b6859576c0) on address 0x1499caa00000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 52: 35829 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x559d6825b340) on address 0x145970440000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 53: 49069 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a30bca6570) on address 0x147060200000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 54: 55352 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:21:15: error: name defined in alias declaration must be an identifier
   21 |         using dace::float128 = thrust::complex<double>;
      |               ^~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:22:15: error: name defined in alias declaration must be an identifier
   22 |         using dace::float64 = thrust::complex<float>;
      |               ^~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:22:21: error: typedef redefinition with different types ('thrust::complex<float>' vs 'double')
   22 |         using dace::float64 = thrust::complex<float>;
      |                     ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:87:20: note: previous definition is here
   87 |     typedef double float64;
      |                    ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:515:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  515 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
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
9 warnings and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 334, in <module>
    c2 = sdfg2.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:21:15: error: name defined in alias declaration must be an identifier
   21 |         using dace::float128 = thrust::complex<double>;
      |               ^~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:22:15: error: name defined in alias declaration must be an identifier
   22 |         using dace::float64 = thrust::complex<float>;
      |               ^~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:22:21: error: typedef redefinition with different types ('thrust::complex<float>' vs 'double')
   22 |         using dace::float64 = thrust::complex<float>;
      |                     ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:87:20: note: previous definition is here
   87 |     typedef double float64;
      |                    ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:515:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  515 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
1 warning and 3 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14ddfa14b7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14fd70c3b7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Exception ignored in: <function CompiledSDFG.__del__ at 0x14fd70c3b7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_1.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55bc01d30080) on address 0x1512bc208000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 60: 101010 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x559c9a70a150) on address 0x14ba8d800000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 61: 113484 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x563d9db6ed80) on address 0x14fd70608000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 62: 147096 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5608f45c1a80) on address 0x14d3e9206000. Reason: Unknown.
/var/spool/slurmd/job108664/slurm_script: line 63: 153487 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
slurmstepd: error: *** JOB 108664 ON nid002938 CANCELLED AT 2025-04-12T10:13:27 DUE TO TIME LIMIT ***

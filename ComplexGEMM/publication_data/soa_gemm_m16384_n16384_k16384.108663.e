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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:8:10: fatal error: cannot open file './numeric': Stale file handle
    8 | #include <numeric>
      |          ^
1 error generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 273, in run_and_measure_time
    report = kernel_sdfg.get_latest_report()
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 1014, in get_latest_report
    path = self.get_latest_report_path()
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 998, in get_latest_report_path
    files = [f for f in os.listdir(path) if f.startswith('report-')]
                        ^^^^^^^^^^^^^^^^
FileNotFoundError: [Errno 2] No such file or directory: '.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf'
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
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 273, in run_and_measure_time
    report = kernel_sdfg.get_latest_report()
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 1014, in get_latest_report
    path = self.get_latest_report_path()
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 998, in get_latest_report_path
    files = [f for f in os.listdir(path) if f.startswith('report-')]
                        ^^^^^^^^^^^^^^^^
FileNotFoundError: [Errno 2] No such file or directory: '.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf'
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x1466c6f3f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Exception ignored in: <function CompiledSDFG.__del__ at 0x1466c6f3f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py:107: UserWarning: Library /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build/libcomplex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.so already loaded, renaming file
  warnings.warn(f'Library {self._library_filename} already loaded, renaming file')
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py:107: UserWarning: Library /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build/libcomplex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.so already loaded, renaming file
  warnings.warn(f'Library {self._library_filename} already loaded, renaming file')
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_1.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a80b841490) on address 0x146dcd60a000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 39: 163422 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14f683f537e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'.
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55c6abeb86e0) on address 0x14dd55607000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 41: 176091 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x563cfeca8700) on address 0x14eea1602000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 42: 181139 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55d522cab8a0) on address 0x14be5d601000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 43: 183141 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
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
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
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
<built-in>:103:25: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                         ^
<built-in>:103:27: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                           ^
<built-in>:103:28: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                            ^
<built-in>:103:29: error: expected unqualified-id
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                             ^
<built-in>:103:29: error: expected ')'
<built-in>:103:26: note: to match this '('
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                          ^
<built-in>:103:32: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                                ^
<built-in>:103:33: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                                 ^
<built-in>:103:35: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                                   ^
<built-in>:103:36: error: source file is not valid UTF-8
  103 | #define __ORDER_LITTLE_ENDIAN__ 1234
      |                                    ^
<built-in>:104:3: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |   ^
<built-in>:104:4: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |    ^
<built-in>:104:6: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |      ^
<built-in>:104:7: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |       ^
<built-in>:104:11: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |           ^
<built-in>:104:12: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |            ^
<built-in>:104:14: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |              ^
<built-in>:104:15: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |               ^
<built-in>:104:20: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |                    ^
<built-in>:104:22: error: source file is not valid UTF-8
  104 | #define __ORDER_BIG_ENDIAN__ 4321
      |                      ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.	Program arguments: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18 -cc1 -triple amdgcn-amd-amdhsa -aux-triple x86_64-unknown-linux-gnu -emit-obj -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp -mrelocation-model pic -pic-level 2 -fhalf-no-semantic-interposition -mframe-pointer=none -fno-rounding-math -mconstructor-aliases -aux-target-cpu x86-64 -fcuda-is-device -mllvm -amdgpu-internalize-symbols -fcuda-allow-variadic-functions -fvisibility=hidden -fapply-global-visibility-to-externs -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/hip.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ocml.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ockl.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_daz_opt_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_unsafe_math_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_finite_only_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_correctly_rounded_sqrt_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_wavefrontsize64_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_isa_version_942.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_abi_version_500.bc -target-cpu gfx942 -debug-info-kind=constructor -dwarf-version=5 -debugger-tuning=gdb -mllvm -amdgpu-spill-cfi-saved-regs -gheterogeneous-dwarf -fdebug-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build -resource-dir /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18 -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers -idirafter /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/hip-6.2.1-dnxqftoeqt7lshn7es5sf7vnjy2n65ep/include -include __clang_hip_runtime_wrapper.h -D DACE_BINARY_DIR=\"/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build\" -D USE_PROF_API=1 -D WITH_CUDA -D WITH_HIP -D __HIP_PLATFORM_AMD__=1 -D __HIP_ROCclr__=1 -D complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_EXPORTS -I /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include -D NDEBUG -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include -cxx-isystem . -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -O2 -std=gnu++17 -fdeprecated-macro -fno-autolink -ferror-limit 19 -fhip-new-launch-api -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -vectorize-loops -vectorize-slp -cuid=619873c4419957e3 -fcuda-allow-variadic-functions -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o /tmp/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda-gfx942-3490c4.o -x hip /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp
1.	<unknown> parser at unknown location
  #0 0x000000000252242b llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x252242b)
  #1 0x000000000251f95b SignalHandler(int) Signals.cpp:0:0
  #2 0x000014cdf025d910 __restore_rt (/lib64/libpthread.so.0+0x16910)
  #3 0x00000000058f50cc clang::Lexer::SkipWhitespace(clang::Token&, char const*, bool&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x58f50cc)
  #4 0x00000000058fc21e clang::Lexer::LexTokenInternal(clang::Token&, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x58fc21e)
  #5 0x000000000597b3bc clang::Preprocessor::Lex(clang::Token&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x597b3bc)
  #6 0x00000000045d32ef clang::Parser::ConsumeAnyToken(bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d32ef)
  #7 0x00000000045d33b0 clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
  #8 0x00000000045d3446 clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
  #9 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #10 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #11 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #12 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #13 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #14 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #15 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #16 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #17 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #18 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #19 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #20 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #21 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #22 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #23 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #24 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #25 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #26 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #27 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #28 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #29 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #30 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #31 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #32 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #33 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #34 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #35 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #36 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #37 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #38 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #39 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #40 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #41 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #42 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #43 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #44 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #45 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #46 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #47 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #48 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #49 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #50 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #51 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #52 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #53 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #54 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #55 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #56 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #57 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #58 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #59 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #60 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #61 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #62 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #63 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #64 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #65 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #66 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #67 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #68 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #69 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #70 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #71 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #72 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #73 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #74 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #75 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #76 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #77 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #78 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #79 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #80 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #81 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #82 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #83 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #84 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #85 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #86 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #87 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #88 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #89 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #90 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #91 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #92 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #93 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #94 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #95 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #96 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #97 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #98 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
 #99 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#100 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#101 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#102 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#103 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#104 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#105 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#106 0x00000000045d34cc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (.constprop.0) Parser.cpp:0:0
#107 0x00000000045d4ccc clang::Parser::SkipUntil(llvm::ArrayRef<clang::tok::TokenKind>, clang::Parser::SkipUntilFlags) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d4ccc)
#108 0x00000000045d5538 clang::BalancedDelimiterTracker::diagnoseMissingClose() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d5538)
#109 0x0000000004619a87 clang::Parser::ParseParenDeclarator(clang::Declarator&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4619a87)
#110 0x0000000004619e1c clang::Parser::ParseDirectDeclarator(clang::Declarator&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4619e1c)
#111 0x00000000046134c7 clang::Parser::ParseDeclaratorInternal(clang::Declarator&, void (clang::Parser::*)(clang::Declarator&)) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x46134c7)
#112 0x000000000471d8bf clang::Sema::runWithSufficientStackSpace(clang::SourceLocation, llvm::function_ref<void ()>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x471d8bf)
#113 0x000000000460e955 clang::Parser::ParseDeclGroup(clang::ParsingDeclSpec&, clang::DeclaratorContext, clang::ParsedAttributes&, clang::SourceLocation*, clang::Parser::ForRangeInit*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x460e955)
#114 0x00000000045d48db clang::Parser::ParseDeclarationOrFunctionDefinition(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*, clang::AccessSpecifier) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d48db)
#115 0x00000000045dbb03 clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbb03)
#116 0x00000000045dd435 clang::Parser::ParseTopLevelDecl(clang::OpaquePtr<clang::DeclGroupRef>&, clang::Sema::ModuleImportState&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dd435)
#117 0x00000000045ce5da clang::ParseAST(clang::Sema&, bool, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45ce5da)
#118 0x000000000300a679 clang::FrontendAction::Execute() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x300a679)
#119 0x0000000002f8b68b clang::CompilerInstance::ExecuteAction(clang::FrontendAction&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2f8b68b)
#120 0x00000000030cf782 clang::ExecuteCompilerInvocation(clang::CompilerInstance*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30cf782)
#121 0x0000000000c182a6 cc1_main(llvm::ArrayRef<char const*>, char const*, void*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc182a6)
#122 0x0000000000c10b18 ExecuteCC1Tool(llvm::SmallVectorImpl<char const*>&, llvm::ToolContext const&) driver.cpp:0:0
#123 0x0000000000c146dd clang_main(int, char**, llvm::ToolContext const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc146dd)
#124 0x0000000000b50983 main (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xb50983)
#125 0x000014cdefc5524d __libc_start_main (/lib64/libc.so.6+0x3524d)
#126 0x0000000000c0f9ba _start /home/abuild/rpmbuild/BUILD/glibc-2.31/csu/../sysdeps/x86_64/start.S:122:0
clang++: error: unable to execute command: Bus error (core dumped)
clang++: error: clang frontend command failed due to signal (use -v to see invocation)
AMD clang version 18.0.0git
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin
clang++: note: diagnostic msg: Error generating preprocessed source(s).
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x1544fd74b7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'.
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 121, in _tile_gpu
    non_transformed_time = auto_tile_util.run_and_measure_time(
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_0);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_0);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_0, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_0, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_0);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_0, __dace_ev_b0_0_0, __dace_ev_e0_0_0);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_0);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_0);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_cuda.cpp:3:
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
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_cuda.cpp:3:
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
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_cuda.cpp:3:
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
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0.dir/all] Error 2
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_cuda.cpp:3:
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
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_cuda.cpp:3:
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
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x559704e725f0) on address 0x14c61d20e000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 50: 12275 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55e85e193a70) on address 0x147a85200000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 52: 48254 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a9936362b0) on address 0x151379600000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 53: 53070 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55f3545b2560) on address 0x14c2f1c03000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 54: 59856 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a6ed1ef810) on address 0x1438bd200000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 56: 85340 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55c07dc959a0) on address 0x14accd809000. Reason: Unknown.
/var/spool/slurmd/job108663/slurm_script: line 57: 96826 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14d19ed4f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'.
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
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp:42:107: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                           ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
slurmstepd: error: *** JOB 108663 ON nid002932 CANCELLED AT 2025-04-12T10:13:26 DUE TO TIME LIMIT ***

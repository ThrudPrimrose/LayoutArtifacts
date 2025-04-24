/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14e19ac3f880>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    def __del__(self):
            ^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'.
  passed = kwargs[arg]
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py:107: UserWarning: Library /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build/libcomplex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.so already loaded, renaming file
  warnings.warn(f'Library {self._library_filename} already loaded, renaming file')
/var/spool/slurmd/job108633/slurm_script: line 35: 158650 Illegal instruction     (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
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
Exception ignored in: <function CompiledSDFG.__del__ at 0x145fa034f7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Memory access fault by GPU node-4 (Agent handle: 0x565247fe3290) on address 0x143f6d603000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 38: 34996 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x560dca5461e0) on address 0x14b5d5207000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 39: 39933 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55d674345910) on address 0x145cdd601000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 40: 53280 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x1464da24b7e0>
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
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55f780cf9780) on address 0x145ba5402000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 43: 98319 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x558cc9c74710) on address 0x14fe59400000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 44: 108534 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14779fe437e0>
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
Memory access fault by GPU node-4 (Agent handle: 0x5596e7e68ca0) on address 0x14cd31c80000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 46: 118012 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5583d47249e0) on address 0x14e179600000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 47: 119643 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x15513b64f7e0>
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
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.	Program arguments: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18 -cc1 -triple amdgcn-amd-amdhsa -aux-triple x86_64-unknown-linux-gnu -emit-obj -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp -mrelocation-model pic -pic-level 2 -fhalf-no-semantic-interposition -mframe-pointer=none -fno-rounding-math -mconstructor-aliases -aux-target-cpu x86-64 -fcuda-is-device -mllvm -amdgpu-internalize-symbols -fcuda-allow-variadic-functions -fvisibility=hidden -fapply-global-visibility-to-externs -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/hip.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ocml.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ockl.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_daz_opt_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_unsafe_math_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_finite_only_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_correctly_rounded_sqrt_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_wavefrontsize64_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_isa_version_942.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_abi_version_500.bc -target-cpu gfx942 -debug-info-kind=constructor -dwarf-version=5 -debugger-tuning=gdb -mllvm -amdgpu-spill-cfi-saved-regs -gheterogeneous-dwarf -fdebug-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build -resource-dir /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18 -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers -idirafter /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/hip-6.2.1-dnxqftoeqt7lshn7es5sf7vnjy2n65ep/include -include __clang_hip_runtime_wrapper.h -D DACE_BINARY_DIR=\"/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/build\" -D USE_PROF_API=1 -D WITH_CUDA -D WITH_HIP -D __HIP_PLATFORM_AMD__=1 -D __HIP_ROCclr__=1 -D complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_EXPORTS -I /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include -D NDEBUG -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include -cxx-isystem . -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -O2 -std=gnu++17 -fdeprecated-macro -fno-autolink -ferror-limit 19 -fhip-new-launch-api -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -vectorize-loops -vectorize-slp -cuid=619873c4419957e3 -fcuda-allow-variadic-functions -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o /tmp/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda-gfx942-d03381.o -x hip /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2_cuda.cpp
1.	/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:53: current parser token '{'
2.	/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:508:1: parsing namespace 'dace'
3.	/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:510:5: parsing namespace 'dace::math'
 #0 0x000000000252242b llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x252242b)
 #1 0x000000000251f95b SignalHandler(int) Signals.cpp:0:0
 #2 0x000014836cf9a910 __restore_rt (/lib64/libpthread.so.0+0x16910)
 #3 0x00000000027443b9 clang::SrcMgr::LineOffsetMapping::get(llvm::MemoryBufferRef, llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator, 4096ul, 4096ul, 128ul>&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x27443b9)
 #4 0x0000000002745b45 clang::SourceManager::getLineNumber(clang::FileID, unsigned int, bool*) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2745b45)
 #5 0x000000000274819b clang::SourceManager::getPresumedLoc(clang::SourceLocation, bool) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x274819b)
 #6 0x000000000273bfce clang::FullSourceLoc::getPresumedLoc(bool) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x273bfce)
 #7 0x00000000030b7316 clang::DiagnosticRenderer::emitIncludeStackRecursively(clang::FullSourceLoc) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30b7316)
 #8 0x00000000030b734e clang::DiagnosticRenderer::emitIncludeStackRecursively(clang::FullSourceLoc) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30b734e)
 #9 0x00000000030b880b clang::DiagnosticRenderer::emitDiagnostic(clang::FullSourceLoc, clang::DiagnosticsEngine::Level, llvm::StringRef, llvm::ArrayRef<clang::CharSourceRange>, llvm::ArrayRef<clang::FixItHint>, llvm::PointerUnion<clang::Diagnostic const*, clang::StoredDiagnostic const*>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30b880b)
#10 0x000000000306d89e clang::TextDiagnosticPrinter::HandleDiagnostic(clang::DiagnosticsEngine::Level, clang::Diagnostic const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x306d89e)
#11 0x000000000272b4cf clang::DiagnosticIDs::ProcessDiag(clang::DiagnosticsEngine&) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x272b4cf)
#12 0x00000000027233db clang::DiagnosticsEngine::EmitCurrentDiagnostic(bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x27233db)
#13 0x000000000472c0a3 clang::Sema::EmitCurrentDiagnostic(unsigned int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x472c0a3)
#14 0x000000000472ca63 clang::Sema::SemaDiagnosticBuilder::~SemaDiagnosticBuilder() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x472ca63)
#15 0x0000000004712019 (anonymous namespace)::ParsedAttrInfoAcquireCapability::diagAppertainsToDecl(clang::Sema&, clang::ParsedAttr const&, clang::Decl const*) const ParsedAttr.cpp:0:0
#16 0x000000000475364e clang::Sema::checkCommonAttributeFeatures(clang::Decl const*, clang::ParsedAttr const&, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x475364e)
#17 0x000000000497a540 ProcessDeclAttribute(clang::Sema&, clang::Scope*, clang::Decl*, clang::ParsedAttr const&, clang::Sema::ProcessDeclAttributeOptions const&) SemaDeclAttr.cpp:0:0
#18 0x000000000497da48 clang::Sema::ProcessDeclAttributes(clang::Scope*, clang::Decl*, clang::Declarator const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x497da48)
#19 0x000000000490d5be clang::Sema::ActOnVariableDeclarator(clang::Scope*, clang::Declarator&, clang::DeclContext*, clang::TypeSourceInfo*, clang::LookupResult&, llvm::MutableArrayRef<clang::TemplateParameterList*>, bool&, llvm::ArrayRef<clang::BindingDecl*>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x490d5be)
#20 0x0000000004924f11 clang::Sema::HandleDeclarator(clang::Scope*, clang::Declarator&, llvm::MutableArrayRef<clang::TemplateParameterList*>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4924f11)
#21 0x0000000004925613 clang::Sema::ActOnDeclarator(clang::Scope*, clang::Declarator&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4925613)
#22 0x00000000045fe38d clang::Parser::ParseDeclarationAfterDeclaratorAndAttributes(clang::Declarator&, clang::Parser::ParsedTemplateInfo const&, clang::Parser::ForRangeInit*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45fe38d)
#23 0x000000000460f25f clang::Parser::ParseDeclGroup(clang::ParsingDeclSpec&, clang::DeclaratorContext, clang::ParsedAttributes&, clang::SourceLocation*, clang::Parser::ForRangeInit*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x460f25f)
#24 0x00000000045d48db clang::Parser::ParseDeclarationOrFunctionDefinition(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*, clang::AccessSpecifier) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d48db)
#25 0x00000000045dbb03 clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbb03)
#26 0x00000000046287c4 clang::Parser::ParseInnerNamespace(llvm::SmallVector<clang::Parser::InnerNamespaceInfo, 4u> const&, unsigned int, clang::SourceLocation&, clang::ParsedAttributes&, clang::BalancedDelimiterTracker&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x46287c4)
#27 0x000000000462e37e clang::Parser::ParseNamespace(clang::DeclaratorContext, clang::SourceLocation&, clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x462e37e)
#28 0x0000000004612995 clang::Parser::ParseDeclaration(clang::DeclaratorContext, clang::SourceLocation&, clang::ParsedAttributes&, clang::ParsedAttributes&, clang::SourceLocation*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4612995)
#29 0x00000000045dbc8c clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbc8c)
#30 0x00000000046287c4 clang::Parser::ParseInnerNamespace(llvm::SmallVector<clang::Parser::InnerNamespaceInfo, 4u> const&, unsigned int, clang::SourceLocation&, clang::ParsedAttributes&, clang::BalancedDelimiterTracker&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x46287c4)
#31 0x000000000462e37e clang::Parser::ParseNamespace(clang::DeclaratorContext, clang::SourceLocation&, clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x462e37e)
#32 0x0000000004612995 clang::Parser::ParseDeclaration(clang::DeclaratorContext, clang::SourceLocation&, clang::ParsedAttributes&, clang::ParsedAttributes&, clang::SourceLocation*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4612995)
#33 0x00000000045dbc8c clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbc8c)
#34 0x00000000045dd435 clang::Parser::ParseTopLevelDecl(clang::OpaquePtr<clang::DeclGroupRef>&, clang::Sema::ModuleImportState&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dd435)
#35 0x00000000045ce5da clang::ParseAST(clang::Sema&, bool, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45ce5da)
#36 0x000000000300a679 clang::FrontendAction::Execute() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x300a679)
#37 0x0000000002f8b68b clang::CompilerInstance::ExecuteAction(clang::FrontendAction&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2f8b68b)
#38 0x00000000030cf782 clang::ExecuteCompilerInvocation(clang::CompilerInstance*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30cf782)
#39 0x0000000000c182a6 cc1_main(llvm::ArrayRef<char const*>, char const*, void*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc182a6)
#40 0x0000000000c10b18 ExecuteCC1Tool(llvm::SmallVectorImpl<char const*>&, llvm::ToolContext const&) driver.cpp:0:0
#41 0x0000000000c146dd clang_main(int, char**, llvm::ToolContext const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc146dd)
#42 0x0000000000b50983 main (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xb50983)
#43 0x000014836c99224d __libc_start_main (/lib64/libc.so.6+0x3524d)
#44 0x0000000000c0f9ba _start /home/abuild/rpmbuild/BUILD/glibc-2.31/csu/../sysdeps/x86_64/start.S:122:0
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
Exception ignored in: <function CompiledSDFG.__del__ at 0x150f44f4f7e0>
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
Memory access fault by GPU node-4 (Agent handle: 0x555fe95a6bc0) on address 0x146bad200000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 51: 155771 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55bda7bde670) on address 0x1444dd807000. Reason: Unknown.
/var/spool/slurmd/job108633/slurm_script: line 52: 163107 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384
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
Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_16384_16384_16384_auto_tiled_0_c2.cpp.o
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
slurmstepd: error: *** JOB 108633 ON nid002934 CANCELLED AT 2025-04-12T07:09:26 DUE TO TIME LIMIT ***

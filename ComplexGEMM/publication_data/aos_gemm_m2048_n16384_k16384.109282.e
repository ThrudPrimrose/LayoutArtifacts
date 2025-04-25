/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_159129. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x562e095a2750) on address 0x146052600000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 35: 159129 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_160674. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x149ce8a44540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_162843. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x5576847559e0) on address 0x150304c1e000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 37: 162843 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_164158. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_164717. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_165274. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_165941. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
:0:/long_pathname_so_that_rpms_can_package_the_debug_info/src/external/clr/hipamd/src/hip_global.cpp:114 : 2813161128841 us: [pid:165941 tid:0x14a21b4cab80] Cannot find Symbol with name: _Z20GPU_DeviceMap_0_0_13PKN6thrust7complexIfEES3_PS1_iii
/var/spool/slurmd/job109282/slurm_script: line 41: 165941 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_166805. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14c808854540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Exception ignored in: <function CompiledSDFG.__del__ at 0x14c808854540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_1.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55cd2364db70) on address 0x14ca42440000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 43: 169445 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_169954. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x560c30de2390) on address 0x143b41c00000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 44: 169954 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_170675. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55f04fbfc440) on address 0x15092049e000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 45: 170675 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_171812. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/math.h:566:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  566 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/types.h:69:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   69 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:186:2: error: expected unqualified-id
  186 |  16, 1);
      |  ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:187:1: error: extraneous closing brace ('}')
  187 | }
      | ^
9 warnings and 2 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_173030. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14da02454540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Memory access fault by GPU node-4 (Agent handle: 0x55afb6f45d50) on address 0x14be12e15000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 47: 173030 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_177462. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14e254854540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5633e56505e0) on address 0x14669b400000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 49: 178428 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_178924. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_179646. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x560431bc7b20) on address 0x144deec0c000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 51: 179646 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_180230. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_180895. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55e0ca920fe0) on address 0x1464ae6d1000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 53: 180895 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_181442. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x152fddf5c540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_184350. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:
ld: cannot find /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/build/libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so: No such file or directory

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5633272fea80) on address 0x14c946002000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 56: 185871 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_186398. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x56477324d530) on address 0x143e4d602000. Reason: Unknown.
/var/spool/slurmd/job109282/slurm_script: line 57: 186398 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout AoS --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_187091. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_188426. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_192175. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x146c9a84c540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:49:5: error: expected '}'
   49 |
      |     ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:48:1: note: to match this '{'
   48 | {
      | ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_195106. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x15226775c540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14ddca65c540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_1981. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_3292. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_3842. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_5059. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 193, in __init__
    self._init = lib.get_symbol('__dace_init_{}'.format(sdfg.name))
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 49, in get_symbol
    raise KeyError(f'Function {name} not found in library {os.path.basename(self._library_filename)}')
KeyError: 'Function __dace_init_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2 not found in library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so'
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_6145. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_7135. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
-- Configuring done (0.1s)
-- Generating done (0.2s)
-- Build files have been written to: /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/build
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_7682. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x146cc8e54540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": invalid device function. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 193, in __init__
    self._init = lib.get_symbol('__dace_init_{}'.format(sdfg.name))
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 49, in get_symbol
    raise KeyError(f'Function {name} not found in library {os.path.basename(self._library_filename)}')
KeyError: 'Function __dace_init_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0 not found in library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.so'
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_14580. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14ecb1f5c540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp:44:99: error: use of undeclared identifier '__HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'
   44 |     __state->report.save(".dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                   ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_16872. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14980fa50540>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 462, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py:2446: UserWarning: SDFG 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_0.so. Reason:

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_17852. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2469, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/math.h:566:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  566 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/types.h:69:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   69 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:112:45: warning: loop not unrolled: the optimizer was unable to perform the requested transformation; the transformation might be disabled or specified as part of an unsupported transformation ordering [-Wpass-failed=transform-warning]
  112 |                                             for (auto i = d_i; i < (d_i + 4); i += 1) {
      |                                             ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:114:49: warning: loop not unrolled: the optimizer was unable to perform the requested transformation; the transformation might be disabled or specified as part of an unsupported transformation ordering [-Wpass-failed=transform-warning]
  114 |                                                 for (auto j = d_j; j < (d_j + 16); j += 1) {
      |                                                 ^
11 warnings generated when compiling for gfx942.
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/math.h:566:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  566 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/types.h:69:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   69 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
9 warnings generated when compiling for host.
Linking HIP shared library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so
clang++: error: no such file or directory: 'CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.cpp.o'
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/build.make:117: libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_19250. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 445, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2545, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/sdfg/sdfg.py", line 2479, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/beverindace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_aos_AoS_2048_16384_16384_auto_tiled_0_c2.so. Reason:


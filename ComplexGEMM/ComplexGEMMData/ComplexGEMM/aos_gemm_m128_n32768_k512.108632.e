/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_173480. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x561fec0147b0) on address 0x1528f4024000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 35: 173480 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_183501. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55b647c51bf0) on address 0x150da0c05000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 36: 183501 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_7354. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55b388550c10) on address 0x148e4b61a000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 37:  7354 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_15416. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x557a211710f0) on address 0x1476b740f000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 38: 15416 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_19042. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x562ca34aa2f0) on address 0x148a3902a000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 39: 19042 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_21256. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55a43b5001f0) on address 0x145176800000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 40: 21256 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55c90a6802d0) on address 0x1540d2840000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 41: 23946 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_24646. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55f57707bc30) on address 0x1462f4a19000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 42: 24646 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_46429. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55cbf9dc39c0) on address 0x14a7fb21d000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 43: 46429 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_51252. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55ddeb666ea0) on address 0x152441e0b000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 44: 51252 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_62470. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55d0db435600) on address 0x153416e00000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 45: 62470 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_68157. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x558e38f99a00) on address 0x151aca622000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 46: 68157 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_74263. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55e29f62d730) on address 0x14af22821000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 47: 74263 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_76436. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x562501b9aa00) on address 0x14700cc11000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 48: 76436 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5575f79ba330) on address 0x14d98541e000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 49: 81534 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_82199. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55cdae87f970) on address 0x15069e860000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 50: 82199 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_83081. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55ed82294a80) on address 0x14735d209000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 51: 83081 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x560639eafe00) on address 0x1454dbc21000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 52: 91124 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_92332. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x564657370cf0) on address 0x148238440000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 53: 92332 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_94778. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x5636e7f6fb30) on address 0x1522c661c000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 54: 94778 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_98963. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55a0a69416d0) on address 0x1462a9207000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 55: 98963 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_104405. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55c137dc8040) on address 0x14d6fd229000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 56: 104405 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_108048. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55fae0878b70) on address 0x148897a11000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 57: 108048 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_113092. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x55c58a92a6d0) on address 0x14722503d000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 58: 113092 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_114341. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
Memory access fault by GPU node-4 (Agent handle: 0x5568653abc40) on address 0x147e48a04000. Reason: Unknown.
/var/spool/slurmd/job108632/slurm_script: line 59: 114341 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py:422: UserWarning: Failed to write temporarily kernel cache file! File path was /users/ybudanaz/.cache/torch/kernels/abs_kernel_vectorized4_archgfx942:sramecc+:xnack-_nvrtc9.0_ptx_43825_d99a8a6ee897f0b59a2a79b6591a9b44dc4d4e41_tmp_121286. This warning will only appear once per process. (Triggered internally at /pytorch/aten/src/ATen/native/hip/jit_utils.cpp:1622.)
  are_close = torch.allclose(
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
    )
     
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    return best_config
                      
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    report = kernel_sdfg.get_latest_report()
    ^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2545, in __call__
    * Auto-parallelization (loop-to-map)
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2469, in compile
    def __call__(self, *args, **kwargs):
                         ^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
-- Configuring done (0.1s)
-- Generating done (0.1s)
-- Build files have been written to: /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/build
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_13, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_13, __dace_ev_b0_0_13, __dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cpu/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_13);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:3:
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
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:96:74: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   96 | __global__ void __launch_bounds__(1024) GPU_DeviceMap_0_0_13(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                    ~~~~~~^~~~~~~~~
      |                                                                          complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:96:114: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   96 | __global__ void __launch_bounds__(1024) GPU_DeviceMap_0_0_13(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                            ~~~~~~^~~~~~~~~
      |                                                                                                                  complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:96:148: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   96 | __global__ void __launch_bounds__(1024) GPU_DeviceMap_0_0_13(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                              ~~~~~~^~~~~~~~~
      |                                                                                                                                                    complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:118:77: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  118 |                                                             dace::complex64 __tmp2;
      |                                                                             ^~~~~~
      |                                                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:78:1: note: expanded from here
   78 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:118:76: error: expected ';' after expression
  118 |                                                             dace::complex64 __tmp2;
      |                                                                            ^
      |                                                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:118:67: error: no member named 'complex64' in namespace 'dace'
  118 |                                                             dace::complex64 __tmp2;
      |                                                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:118:77: error: reference to __host__ function '__exp2' in __global__ function
  118 |                                                             dace::complex64 __tmp2;
      |                                                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:78:1: note: expanded from here
   78 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:119:67: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  119 |                                                             dace::complex64 __tmp3 = 0;
      |                                                             ~~~~~~^~~~~~~~~
      |                                                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:119:77: error: no viable conversion from 'int' to 'dace::complexJ'
  119 |                                                             dace::complex64 __tmp3 = 0;
      |                                                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:121:71: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  121 |                                                                 dace::complex64 __in2 = B[((N * (k + tk)) + j)];
      |                                                                 ~~~~~~^~~~~~~~~
      |                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:122:81: error: use of undeclared identifier '__in1'; did you mean '__in2'?
  122 |                                                                 dace::complex64 __in1 = A[(((K * i) + k) + tk)];
      |                                                                                 ^~~~~
      |                                                                                 __in2
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:121:81: note: '__in2' declared here
  121 |                                                                 dace::complex64 __in2 = B[((N * (k + tk)) + j)];
      |                                                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:122:80: error: expected ';' after expression
  122 |                                                                 dace::complex64 __in1 = A[(((K * i) + k) + tk)];
      |                                                                                ^
      |                                                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:122:71: error: no member named 'complex64' in namespace 'dace'
  122 |                                                                 dace::complex64 __in1 = A[(((K * i) + k) + tk)];
      |                                                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:123:71: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  123 |                                                                 dace::complex64 __out;
      |                                                                 ~~~~~~^~~~~~~~~
      |                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:127:74: error: use of undeclared identifier '__in1'; did you mean '__in2'?
  127 |                                                                 __out = (__in1 * __in2);
      |                                                                          ^~~~~
      |                                                                          __in2
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:121:81: note: '__in2' declared here
  121 |                                                                 dace::complex64 __in2 = B[((N * (k + tk)) + j)];
      |                                                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:127:71: error: no viable overloaded '='
  127 |                                                                 __out = (__in1 * __in2);
      |                                                                 ~~~~~ ^ ~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate function (the implicit copy assignment operator) not viable: no known conversion from 'int' to 'const complexJ' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate function (the implicit move assignment operator) not viable: no known conversion from 'int' to 'complexJ' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:130:65: error: use of undeclared identifier '__tmp2'; did you mean '__tmp3'?
  130 |                                                                 __tmp2 = __out;
      |                                                                 ^~~~~~
      |                                                                 __tmp3
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:119:77: note: '__tmp3' declared here
  119 |                                                             dace::complex64 __tmp3 = 0;
      |                                                                             ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:133:71: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  133 |                                                                 dace::complex64 __in2 = __tmp2;
      |                                                                 ~~~~~~^~~~~~~~~
      |                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:133:89: error: use of undeclared identifier '__tmp2'; did you mean '__tmp3'?
  133 |                                                                 dace::complex64 __in2 = __tmp2;
      |                                                                                         ^~~~~~
      |                                                                                         __tmp3
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp:119:77: note: '__tmp3' declared here
  119 |                                                             dace::complex64 __tmp3 = 0;
      |                                                                             ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
9 warnings and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512_auto_tiled_0_c2.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cpu/complex_gemm_aos_AoS_128_32768_512.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
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
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:3:
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
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   25 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:28:28: note: explicit constructor is not a candidate
   28 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:25:12: note: 'complexJ' declared here
   25 |     struct complexJ
      |            ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'int (int)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from <built-in>:1:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:146:
In file included from /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers/complex:82:
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:156:17: error: function cannot return function type 'int (int)'
  156 |       constexpr _Tp
      |                 ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:235:11: error: data member instantiated with function type 'int (int)'
  235 |       _Tp _M_real;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:236:11: error: data member instantiated with function type 'int (int)'
  236 |       _Tp _M_imag;
      |           ^
/usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/complex:152:17: error: function cannot return function type 'long double (int, long double)'
  152 |       constexpr _Tp
      |                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp:110:48: note: in instantiation of template class 'std::complex<long double (int, long double)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_128_32768_512/src/cuda/hip/complex_gemm_aos_AoS_128_32768_512_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_128_32768_512.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2


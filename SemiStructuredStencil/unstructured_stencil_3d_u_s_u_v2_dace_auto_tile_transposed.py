import copy
import itertools
from pathlib import Path
import dace
import dace.transformation
import numpy as np
import transpose

N = dace.symbol("N", dtype=dace.int64)
cpu = False
verify = False

@dace.program
def kernel(
    TSTEPS: dace.int64,
    vals_A: dace.float64[N, N, N],
    vals_B: dace.float64[N, N, N],
    neighbors: dace.int64[N, N, 8],
):

    for _ in range(1, TSTEPS):
        for i, j, k in dace.map[0 : N - 2, 0 : N - 2, 0 : N - 2]:
            vals_B[i + 1, j + 1, k + 1] = 0.2 * (
                vals_A[i + 1, j + 1, k + 1]
                + vals_A[i + 1, j , k + 1]
                + vals_A[i + 1, j + 2, k + 1]
                + vals_A[neighbors[i+1, k+1, 0], j + 1, neighbors[i+1, k+1, 4]]
                + vals_A[neighbors[i+1, k+1, 1], j + 1, neighbors[i+1, k+1, 5]]
                + vals_A[neighbors[i+1, k+1, 2], j + 1, neighbors[i+1, k+1, 6]]
                + vals_A[neighbors[i+1, k+1, 3], j + 1, neighbors[i+1, k+1, 7]]
            )

def np_kernel(TSTEPS, vals_A, vals_B, neighbors):
    N = vals_A.shape[0]
    i, j, k = np.ogrid[1:N-1, 1:N-1, 1:N-1]

    for _ in range(1, TSTEPS):
        vals_B[i, j, k] = 0.2 * (
            vals_A[i, j, k]
            + vals_A[i, j + 1, k]
            + vals_A[i, j - 1, k]
            + vals_A[neighbors[i, k, 0], j, neighbors[i, k, 4]]
            + vals_A[neighbors[i, k, 1], j, neighbors[i, k, 5]]
            + vals_A[neighbors[i, k, 2], j, neighbors[i, k, 6]]
            + vals_A[neighbors[i, k, 3], j, neighbors[i, k, 7]]
        )

def initialize(N, datatype=np.float64, seed=42):
    if not cpu:
        import torch
        torch.manual_seed(seed)
        assert torch.cuda.is_available()
        device = torch.device("cuda")

        dtype_map = {
            float: torch.float32,
            int: torch.int32,
            np.float32: torch.float32,
            np.float64: torch.float64,
            np.int32: torch.int32,
            np.int64: torch.int64
        }
        torch_dtype = dtype_map.get(datatype, torch.float64)
        i, j, k = torch.meshgrid(
            torch.arange(N, dtype=torch_dtype, device=device),
            torch.arange(N, dtype=torch_dtype, device=device),
            torch.arange(N, dtype=torch_dtype, device=device),
            indexing='ij'
        )

        vals_A = i * k * (j + 2) / N
        vals_B = i * k * (j + 3) / N

        neighbors = torch.randint(1, N, (N, N, 8), dtype=torch.int64, device=device)

        return vals_A, vals_B, neighbors
    else:
        np.random.seed(seed)

        vals_A = np.fromfunction(lambda i, j, k: i * k * (j + 2) / N, (N, N, N), dtype=datatype)
        vals_B = np.fromfunction(lambda i, j, k: i * k * (j + 3) / N, (N, N, N), dtype=datatype)
        neighbors = np.random.randint(1, N, size=(N, N, 8), dtype=np.int64)
        return vals_A, vals_B, neighbors

def torch_kernel(TSTEPS, vals_A, vals_B, neighbors):
    N = vals_A.shape[0]
    device = vals_A.device

    i, j, k = torch.meshgrid(
        torch.arange(1, N-1, device=device),
        torch.arange(1, N-1, device=device),
        torch.arange(1, N-1, device=device),
        indexing='ij'
    )

    for _ in range(1, TSTEPS):
        vals_B[i, j, k] = 0.2 * (
            vals_A[i, j, k]
            + vals_A[i, j + 1, k]
            + vals_A[i, j - 1, k]
            + vals_A[neighbors[i, k, 0], j, neighbors[i, k, 4]]
            + vals_A[neighbors[i, k, 1], j, neighbors[i, k, 5]]
            + vals_A[neighbors[i, k, 2], j, neighbors[i, k, 6]]
            + vals_A[neighbors[i, k, 3], j, neighbors[i, k, 7]]
        )

import argparse
import dace.transformation.auto.auto_optimize as opt

from dace.transformation.auto_tile.auto_tile_gpu import auto_tile_gpu

def autotune(_in_sdfg, inputs, dims, bound_dims):
    assert dims >= 0 and dims <= 3
    import torch

    if torch.cuda.is_available():
        device_name = torch.cuda.get_device_name(0)
        if "NVIDIA" in device_name:
            print("Nvidia GPU detected:", device_name)
            gpu = "nvidia"
        elif "AMD" in device_name:
            print("AMD GPU detected:", device_name)
            gpu = "amd"
    else:
        print("No GPU detected")

    if not (gpu == "nvidia" or gpu == "amd"):
        raise ValueError("Only Nvidia and AMD GPUs are supported.")

    if gpu == "nvidia":
        warp_size = 32
        static_sram = 48*1024
    elif gpu == "amd":
        warp_size = 64
        static_sram = 64*1024

    memory_tiling = [(16,)]

    def copy_to_gpu(sdfg):
        sdfg.simplify(skip=["ArrayElimination", "DeadDataflowElimination"])
        for k, v in sdfg.arrays.items():
            if not v.transient and type(v) == dace.data.Array:
                v.storage = dace.dtypes.StorageType.GPU_Global
            if v.transient and type(v) == dace.data.Array and v.storage == dace.dtypes.StorageType.Default:
                v.storage = dace.dtypes.StorageType.GPU_Global

        sdfg.apply_gpu_transformations(validate=True, simplify=False)

    dims = 3
    thread_coarsening_3D = [(x, y, z) for x, y, z in list(itertools.product(
        [1, 2, 4, 8, 16], [1, 2, 4, 8, 16], [1, 2, 4, 8, 16])) if x * y * z < 64]
    block_sizes_3D = [(x, y, z) for x, y, z in list(itertools.product(
        [1, 2, 4, 8, 16, 32, 64, 128, 256], [1, 2, 4, 8, 16, 32], [1, 2, 4, 8, 16, 32]))
        if x * y * z <= 1024 and (x * y * z) % (warp_size) == 0 and x * y * z >= warp_size and
        (x >= 16 or y >= 16 or z >= 16) and (z == 1 or (z >= 2 and y > 1)) ]
    thread_coarsening = thread_coarsening_3D
    block_sizes = block_sizes_3D

    copy_to_gpu(_in_sdfg)
    #aopt_sdfg = opt.auto_optimize(sdfg=_in_sdfg, device=dace.dtypes.DeviceType.GPU,
    #                                validate=False, validate_all=False, use_gpu_storage=True)
    #aopt_sdfg.validate()
    _in_sdfg.simplify(skip=["ArrayElimination", "DeadDataflowElimination"])
    _in_sdfg.apply_gpu_transformations()

    #dace.Config.set('compiler', 'cpu', 'args', value='-march=native -mtune=native -flto -Ofast -std=c++17 -fPIC')
    #dace.Config.set('compiler', 'cuda', 'args', value='-march=native --use_fast_math -O3 -std=c++17 --compiler-options=\"-Ofast\"')

    tiled_sdfg, _ = auto_tile_gpu(
        sdfg=_in_sdfg,
        exhaustive_search=True,
        memory_tiling_parameters=memory_tiling,
        thread_coarsening_parameters=thread_coarsening,
        thread_block_parameters=block_sizes,
        apply_explicit_memory_transfers=[(False, False, False)],
        apply_remainder_loop=[False],
        inputs=inputs,
        device_schedule = dace.dtypes.ScheduleType.GPU_Device,
        re_apply=False,
        verbose=True,
        timeout=99999999999,
        random_iter=True,
        static_sram_limit=static_sram,
        bound_dims=bound_dims,
        copy_whole=False,
        output_name="vals_B",
    )

    #csdfg = tiled_sdfg.compile()
    #csdfg(**copy.deepcopy(inputs))


    #return csdfg
    return tiled_sdfg

import gc
if __name__ == "__main__":
    dace.Config.set('cache',value='unique')
    # Set up argument parser
    parser = argparse.ArgumentParser(description="Process values for N.")
    parser.add_argument('N_values', nargs='+', type=int, help='List of N values')

    dace.Config.set('compiler', 'cpu', 'args', value='-march=native -mtune=native -flto -O3 -std=c++17 -fPIC')
    dace.Config.set('compiler', 'cuda', 'hip_args', value='--ofload-arch=gfx942 -march=native -mtune=native -flto -O3 -ffast-math -std=c++17 -fPIC')
    dace.Config.set('compiler', 'cuda', 'default_block_size', value="64,1,1")

    args = parser.parse_args()
    N_values = args.N_values

    if not cpu:
        import torch
    if True:
        tsdfg = kernel.to_sdfg(use_cache=False, simplify=False)
        tsdfg.simplify(skip=["ArrayElimination", "DeadDataflowElimination"])
        tsdfg.clear_instrumentation_reports()


        tsdfg.validate()
        transpose.permute_index(tsdfg, tsdfg, {"vals_A": [0, 2, 1], "vals_B": [0, 2, 1]})
        transpose.permute_maps(tsdfg, {"kernel_21": [0, 2, 1], "kernel_31": [0, 2, 1]})
        if not cpu:
            for arr_name, arr in tsdfg.arrays.items():
                if not arr.transient and isinstance(arr, dace.data.Array):
                    arr.storage = dace.StorageType.GPU_Global
            tsdfg.apply_gpu_transformations(simplify=False)
            tsdfg.simplify(skip=["ArrayElimination", "DeadDataflowElimination"])

        tsdfg.validate()

    for _N in N_values:
        vals_A, vals_B, neighbors = initialize(_N)
        tsdfg.name = f"gpu_usu_transposed_{_N}"
        tuned_sdfg = autotune(tsdfg, {"vals_A": vals_A, "vals_B": vals_B, "neighbors": neighbors, "TSTEPS": 10, "N": _N}, 3, [_N-2, _N-2, _N-2])
        tuned_sdfg.name = f"gpu_usu_transposed_{_N}"
        tuned_sdfg.save(tuned_sdfg.name + ".sdfgz", compress=True)
        tuned_sdfg.instrument = dace.InstrumentationType.Timer
        for state in tuned_sdfg.all_states():
            for node in state.nodes():
                if isinstance(node, dace.nodes.MapEntry):
                    if cpu:
                        node.instrument = dace.InstrumentationType.Timer
                    else:
                        node.instrument = dace.InstrumentationType.GPU_Events

        for _TSTEPS in [10, 1000]:
            #if Path(f"u_s_u_times_N_{_N}_TSTEPS_{_TSTEPS}_auto_tile.txt").exists():
            #    continue
            with open(f"u_s_u_times_N_{_N}_TSTEPS_{_TSTEPS}_auto_tile.txt", "w") as f:
                f.write(f"N: {_N}, TSTEPS: {_TSTEPS}\n")
                for repeat in range(10):
                    f.write("Repeat: " + str(repeat) + "\n")
                    tuned_sdfg(vals_A=vals_A, vals_B=vals_B, neighbors=neighbors, N=_N, TSTEPS=_TSTEPS)
        del vals_A
        del vals_B
        del neighbors
        gc.collect()
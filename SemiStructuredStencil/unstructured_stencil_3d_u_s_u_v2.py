import copy
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
        for i, j, k in dace.map[0 : N - 2, 0 : N - 2, 0 : N - 2]:
            vals_A[i + 1, j + 1, k + 1] = 0.2 * (
                vals_B[i + 1, j + 1, k + 1]
                + vals_B[i + 1, j , k + 1]
                + vals_B[i + 1, j + 2, k + 1]
                + vals_B[neighbors[i+1, k+1, 0], j + 1, neighbors[i+1, k+1, 4]]
                + vals_B[neighbors[i+1, k+1, 1], j + 1, neighbors[i+1, k+1, 5]]
                + vals_B[neighbors[i+1, k+1, 2], j + 1, neighbors[i+1, k+1, 6]]
                + vals_B[neighbors[i+1, k+1, 3], j + 1, neighbors[i+1, k+1, 7]]
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

        vals_A[i, j, k] = 0.2 * (
            vals_B[i, j, k]
            + vals_B[i, j - 1, k]
            + vals_B[i, j + 1, k]
            + vals_B[neighbors[i, k, 0], j, neighbors[i, k, 4]]
            + vals_B[neighbors[i, k, 1], j, neighbors[i, k, 5]]
            + vals_B[neighbors[i, k, 2], j, neighbors[i, k, 6]]
            + vals_B[neighbors[i, k, 3], j, neighbors[i, k, 7]]
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

        vals_A[i, j, k] = 0.2 * (
            vals_B[i, j, k]
            + vals_B[i, j - 1, k]
            + vals_B[i, j + 1, k]
            + vals_B[neighbors[i, k, 0], j, neighbors[i, k, 4]]
            + vals_B[neighbors[i, k, 1], j, neighbors[i, k, 5]]
            + vals_B[neighbors[i, k, 2], j, neighbors[i, k, 6]]
            + vals_B[neighbors[i, k, 3], j, neighbors[i, k, 7]]
        )


import argparse



if __name__ == "__main__":
    dace.Config.set('cache',value='unique')
    # Set up argument parser
    parser = argparse.ArgumentParser(description="Process values for N.")
    parser.add_argument('N_values', nargs='+', type=int, help='List of N values')

    # Parse the command line arguments
    args = parser.parse_args()
    N_values = args.N_values

    if not cpu:
        import torch
    if Path("unstructured_stencil_3d_u_s_u.sdfgz").exists():
        sdfg = dace.SDFG.from_file("unstructured_stencil_3d_u_s_u.sdfgz")
        tsdfg = dace.SDFG.from_file("unstructured_stencil_3d_u_s_u_transposed.sdfgz")
    else:
        sdfg = kernel.to_sdfg(use_cache=False, simplify=False)
        sdfg.simplify(skip=["ArrayElimination", "DeadDataflowElimination"])
        tsdfg = copy.deepcopy(sdfg)
        sdfg.clear_instrumentation_reports()
        tsdfg.clear_instrumentation_reports()
        tsdfg.name = sdfg.name + "_transposed"

        sdfg.validate()
        if not cpu:
            for arr_name, arr in sdfg.arrays.items():
                if not arr.transient and isinstance(arr, dace.data.Array):
                    arr.storage = dace.StorageType.GPU_Global
            sdfg.apply_gpu_transformations()

        sdfg.validate()

        tsdfg.validate()
        transpose.permute_index(tsdfg, tsdfg, {"vals_A": [0, 2, 1], "vals_B": [0, 2, 1]})
        # Make openmp parallel for on the last dimension
        transpose.permute_maps(tsdfg, {"kernel_21": [0, 2, 1], "kernel_31": [0, 2, 1]})
        if not cpu:
            for arr_name, arr in tsdfg.arrays.items():
                if not arr.transient and isinstance(arr, dace.data.Array):
                    arr.storage = dace.StorageType.GPU_Global
            tsdfg.apply_gpu_transformations()

        tsdfg.validate()

        sdfg.save("unstructured_stencil_3d_u_s_u.sdfgz", compress=True)
        tsdfg.save("unstructured_stencil_3d_u_s_u_transposed.sdfgz", compress=True)


    for _N in N_values:
        for _TSTEPS in [10]:
            if Path(f"u_s_u_times_N_{_N}_TSTEPS_{_TSTEPS}.txt").exists():
                continue
            with open(f"u_s_u_times_N_{_N}_TSTEPS_{_TSTEPS}.txt", "w") as f:
                f.write(f"N: {_N}, TSTEPS: {_TSTEPS}\n")
                for repeat in range(10):
                    f.write("Repeat: " + str(repeat) + "\n")
                    vals_A, vals_B, neighbors = initialize(_N)
                    vals_A2, vals_B2, n2 = initialize(_N)
                    if verify:
                        if not cpu:
                            assert torch.allclose(vals_A2, vals_A), f"{vals_A2 - vals_A}"
                            assert torch.allclose(vals_B2, vals_B), f"{vals_B2 - vals_B}"
                            assert torch.allclose(neighbors, n2), f"{neighbors - n2}"
                        else:
                            assert np.allclose(vals_A2, vals_A), f"{vals_A2 - vals_A}"
                            assert np.allclose(vals_B2, vals_B), f"{vals_B2 - vals_B}"
                            assert np.allclose(neighbors, n2), f"{neighbors - n2}"
                        del n2
                        if cpu:
                            np_kernel(vals_A=vals_A, vals_B=vals_B, neighbors=neighbors, TSTEPS=_TSTEPS)
                        else:
                            torch_kernel(vals_A=vals_A, vals_B=vals_B, neighbors=neighbors, TSTEPS=_TSTEPS)

                    sdfg.instrument = dace.InstrumentationType.Timer
                    for state in sdfg.all_states():
                        for node in state.nodes():
                            if isinstance(node, dace.nodes.MapEntry):
                                if cpu:
                                    node.instrument = dace.InstrumentationType.Timer
                                else:
                                    node.instrument = dace.InstrumentationType.GPU_Events
                    sdfg(vals_A=vals_A2, vals_B=vals_B2, neighbors=neighbors, N=_N, TSTEPS=_TSTEPS)
                    if verify:
                        if not cpu:
                            if not torch.allclose(vals_B2, vals_B):
                                f.write("SDFG and NumPy/CuPy outputs do not match\n")
                            if not torch.allclose(vals_A2, vals_A):
                                f.write("SDFG and NumPy/CuPy outputs do not match\n")
                        else:
                            if not np.allclose(vals_B2, vals_B):
                                f.write("SDFG and NumPy/CuPy outputs do not match\n")
                            if not np.allclose(vals_A2, vals_A):
                                f.write("SDFG and NumPy/CuPy outputs do not match\n")
                    report = sdfg.get_latest_report()
                    f.write(report.__str__())
                    f.flush()
                    del vals_A2, vals_B2


                    vals_A3, vals_B3, n3 = initialize(_N)
                    del n3
                    tsdfg.instrument = dace.InstrumentationType.Timer
                    for state in tsdfg.all_states():
                        for node in state.nodes():
                            if isinstance(node, dace.nodes.MapEntry):
                                if cpu:
                                    node.instrument = dace.InstrumentationType.Timer
                                else:
                                    node.instrument = dace.InstrumentationType.GPU_Events
                    tsdfg(vals_A=vals_A3, vals_B=vals_B3, neighbors=neighbors, N=_N, TSTEPS=_TSTEPS)
                    if verify:
                        if not cpu:
                            if not torch.allclose(vals_B3, vals_B):
                                f.write("SDFG and NumPy/CuPy outputs do not match (transposed kernel)\n")
                            if not torch.allclose(vals_A3, vals_A):
                                f.write("SDFG and NumPy/CuPy outputs do not match (transposed kernel)\n")
                        else:
                            if not np.allclose(vals_B3, vals_B):
                                f.write("SDFG and NumPy/CuPy outputs do not match (transposed kernel)\n")
                            if not np.allclose(vals_A3, vals_A):
                                f.write("SDFG and NumPy/CuPy outputs do not match (transposed kernel)\n")
                    report2 = tsdfg.get_latest_report()
                    f.write(report2.__str__())
                    f.flush()
                    del vals_A3, vals_B3

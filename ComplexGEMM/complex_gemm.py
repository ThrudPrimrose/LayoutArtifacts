import copy
import itertools
import dace
from dace.transformation.auto_tile.auto_tile_gpu import auto_tile_gpu
from dace.transformation.interstate.sdfg_nesting import InlineSDFG
from dace.libraries.blas.nodes import Gemm
from dace.transformation.auto import auto_optimize as aopt
from dace.transformation.interstate import StateFusion
import numpy as np
import torch

M = dace.symbol("M")
N = dace.symbol("N")
K = dace.symbol("K")

complex_type = np.complex64
gpu_complex_type = torch.complex64
float_type = np.float32
gpu_float_type = torch.float32
dace_complex_type = dace.complex64
dace_float_type = dace.float32

import argparse

parser = argparse.ArgumentParser(description="Run complex GEMM (AoS or SoA)")
parser.add_argument("--layout", choices=["AoS", "SoA"], required=True, help="Data layout: AoS or SoA")
args = parser.parse_args()


_M = 1024
_N = 1024
_K = 1024


def rm_assign(sdfg:dace.SDFG):
    for n, g in sdfg.all_nodes_recursive():
        if isinstance(n, dace.nodes.AccessNode):
            ies = g.in_edges(n)
            if len(ies) == 1 and isinstance(ies[0].src, dace.nodes.Tasklet) and ies[0].src.label.startswith("assign"):
                for iies in g.in_edges(ies[0].src):
                    assert ies[0].dst == n
                    g.add_edge(iies.src, iies.src_conn, ies[0].dst, ies[0].dst_conn, copy.deepcopy(iies.data))
                    g.remove_edge(iies)
                g.remove_edge(ies[0])
                g.remove_node(ies[0].src)
                n.setzero = True
            oes = g.out_edges(n)
            if len(oes) == 1 and isinstance(oes[0].dst, dace.nodes.Tasklet) and oes[0].dst.label.startswith("assign"):
                for ooes in g.out_edges(oes[0].dst):
                    assert oes[0].src == n
                    g.add_edge(oes[0].src, oes[0].src_conn, ooes.dst, ooes.dst_conn, copy.deepcopy(ooes.data))
                    g.remove_edge(ooes)
                g.remove_edge(oes[0])
                g.remove_node(oes[0].dst)
                n.setzero = True


if args.layout == "AoS":
    @dace.program
    def complex_gemm_aos(
        A: dace_complex_type[M, K] @ dace.StorageType.GPU_Global,
        B: dace_complex_type[K, N] @ dace.StorageType.GPU_Global,
        C: dace_complex_type[M, N] @ dace.StorageType.GPU_Global,
    ):
        for i, j in dace.map[0:M, 0:N] @ dace.ScheduleType.GPU_Device:
            for k in dace.map[0:K] @ dace.ScheduleType.Sequential:
                C[i, j] = C[i, j] + (A[i, k] * B[k, j])

    sdfg1 = complex_gemm_aos.to_sdfg()
    sdfg1.simplify()
    #aopt.auto_optimize(sdfg1, dace.DeviceType.GPU)
    rm_assign(sdfg1)
    sdfg1.validate()
    for n, g in sdfg1.all_nodes_recursive():
        if isinstance(n, dace.nodes.NestedSDFG):
            n.sdfg.apply_transformations_repeated(StateFusion)
            n.sdfg.simplify()
    sdfg1.apply_transformations_repeated(StateFusion)
    sdfg1.apply_transformations_repeated(InlineSDFG)
    def _move_acc_to_tmp(graph: dace.SDFGState, map_entry: dace.nodes.MapEntry):
        for n in graph.all_nodes_between(map_entry, graph.exit_node(map_entry)):
            if isinstance(n, dace.nodes.AccessNode):
                if graph.out_degree(n) == 1:
                    oes = [oe for oe in graph.out_edges(n) if isinstance(oe.dst, dace.nodes.MapExit)]
                    if len(oes) == 1:
                        oe = oes[0]
                        t = graph.add_tasklet(name="assign", inputs={"_in"}, outputs={"_out"}, code="_out = _in")
                        graph.remove_edge(oe)
                        graph.add_edge(n, None, t, "_in", dace.memlet.Memlet.from_array(n.data, graph.sdfg.arrays[n.data]))
                        graph.add_edge(t, "_out", oe.dst, oe.dst_conn, copy.deepcopy(oe.data))
    for s in sdfg1.all_states():
        for n in s.nodes():
            if isinstance(n, dace.nodes.MapEntry):
                _move_acc_to_tmp(s, n, ["Cr", "Cim"])
    sdfg1.save("complex_gemm_aos.sdfgz", compress=True)

else:
    @dace.program
    def complex_gemm_soa_merged(
        Ar: dace_float_type[M, K] @ dace.StorageType.GPU_Global,
        Br: dace_float_type[K, N] @ dace.StorageType.GPU_Global,
        Cr: dace_float_type[M, N] @ dace.StorageType.GPU_Global,
        Aim: dace_float_type[M, K] @ dace.StorageType.GPU_Global,
        Bim: dace_float_type[K, N] @ dace.StorageType.GPU_Global,
        Cim: dace_float_type[M, N] @ dace.StorageType.GPU_Global,
    ):
        for i, j in dace.map[0:M, 0:N] @ dace.ScheduleType.GPU_Device:
            for k in dace.map[0:K] @ dace.ScheduleType.Sequential:
                tmp1 = Cr[i, j] + (Ar[i, k] * Br[k, j])
                tmp2 = tmp1 - (Aim[i, k] * Bim[k, j])
                tmp3 = Cim[i, j] + (Aim[i, k] * Br[k, j])
                tmp4 = tmp3 + (Ar[i, k] * Bim[k, j])
                Cr[i, j] = tmp2
                Cim[i, j] = tmp4

    def complex_gemm_soa():
        sdfg = dace.SDFG("complex_gemm_soa")
        for name, shape in [
            ("Ar", (M, K)),
            ("Aim", (M, K)),
            ("Br", (K, N)),
            ("Bim", (K, N)),
            ("Cr", (M, N)),
            ("Cim", (M, N)),
        ]:
            sdfg.add_array(
                name=name,
                shape=shape,
                dtype=dace_float_type,
                storage=dace.StorageType.GPU_Global,
            )
        state = sdfg.add_state("main")

        Ar, Br = state.add_access("Ar"), state.add_access("Br")
        Cr = state.add_access("Cr")
        gemm1 = Gemm(name="Ar_at_Br")
        gemm2 = Gemm(name="Aim_at_Bim", beta=1.0, alpha=-1.0)
        gemm3 = Gemm(name="Ar_at_Bim")
        gemm4 = Gemm(name="Aim_at_Br", beta=1.0)
        gemm1._gpu_stream = 0
        gemm2._gpu_stream = 1
        gemm3._gpu_stream = 2
        gemm4._gpu_stream = 3

        state.add_node(gemm1)
        state.add_edge(
            Ar, None, gemm1, "_a", dace.memlet.Memlet.from_array(Ar, sdfg.arrays["Ar"])
        )
        state.add_edge(
            Br, None, gemm1, "_b", dace.memlet.Memlet.from_array(Br, sdfg.arrays["Br"])
        )
        state.add_edge(
            gemm1, "_c", Cr, None, dace.memlet.Memlet.from_array(Cr, sdfg.arrays["Cr"])
        )

        Aim, Bim, Cr2 = (
            state.add_access("Aim"),
            state.add_access("Bim"),
            state.add_access("Cr"),
        )
        state.add_edge(
            Aim, None, gemm2, "_a", dace.memlet.Memlet.from_array(Aim, sdfg.arrays["Aim"])
        )
        state.add_edge(
            Bim, None, gemm2, "_b", dace.memlet.Memlet.from_array(Bim, sdfg.arrays["Bim"])
        )
        state.add_edge(
            Cr, None, gemm2, "_cin", dace.memlet.Memlet.from_array(Cr, sdfg.arrays["Cr"])
        )
        state.add_edge(
            gemm2, "_c", Cr2, None, dace.memlet.Memlet.from_array(Cr, sdfg.arrays["Cr"])
        )

        Ar2, Bim2, Cim = (
            state.add_access("Ar"),
            state.add_access("Bim"),
            state.add_access("Cim"),
        )
        state.add_edge(
            Ar2, None, gemm3, "_a", dace.memlet.Memlet.from_array(Ar2, sdfg.arrays["Ar"])
        )
        state.add_edge(
            Bim2, None, gemm3, "_b", dace.memlet.Memlet.from_array(Bim2, sdfg.arrays["Bim"])
        )
        state.add_edge(
            gemm3, "_c", Cim, None, dace.memlet.Memlet.from_array(Cim, sdfg.arrays["Cim"])
        )

        Aim2, Br2, Cim2 = (
            state.add_access("Aim"),
            state.add_access("Br"),
            state.add_access("Cim"),
        )
        state.add_edge(
            Br2, None, gemm4, "_a", dace.memlet.Memlet.from_array(Br2, sdfg.arrays["Ar"])
        )
        state.add_edge(
            Aim2, None, gemm4, "_b", dace.memlet.Memlet.from_array(Aim2, sdfg.arrays["Bim"])
        )
        state.add_edge(
            Cim, None, gemm4, "_cin", dace.memlet.Memlet.from_array(Cim, sdfg.arrays["Cim"])
        )
        state.add_edge(
            gemm4, "_c", Cim2, None, dace.memlet.Memlet.from_array(Cim, sdfg.arrays["Cim"])
        )
        state.add_edge(
            Cr, None, gemm3, None, dace.memlet.Memlet(None)
        )
        return sdfg


    def _state_fusion(graph:dace.SDFG, s1:dace.SDFGState, s2:dace.SDFGState):
        node_map = dict()
        for n in s2.nodes():
            if isinstance(n, dace.nodes.AccessNode):
                s1n = [v for v in s1.nodes() if isinstance(v, dace.nodes.AccessNode) and v.data == n.data]
                s1_has = len(s1n) > 0
                if s1_has:
                    node_map[n] = s1n[0]
                else:
                    node_map[n] = s1.add_access(n.data)
            else:
                node_map[n] = copy.deepcopy(n)
                s1.add_node(node_map[n])
        for e in s2.edges():
            s1.add_edge(node_map[e.src], e.src_conn, node_map[e.dst], e.dst_conn, copy.deepcopy(e.data))
        e = [e for e in graph.out_edges(s1) if e.dst == s2][0]
        graph.remove_edge(e)
        graph.remove_node(s2)

    def _move_acc_to_tmp(graph: dace.SDFGState, map_entry: dace.nodes.MapEntry, name_list):
        nm = dict()
        for n in graph.all_nodes_between(map_entry, graph.exit_node(map_entry)):
            if isinstance(n, dace.nodes.AccessNode) and n.data in name_list:
                desc = copy.deepcopy(graph.sdfg.arrays[n.data])
                desc.transient = True
                graph.sdfg.add_scalar("_tmp" + n.data, desc.dtype, dace.dtypes.StorageType.Register, True)
                nm[n.data] = "_tmp" + n.data
                n.data = "_tmp" + n.data
        for e in graph.all_edges(*(list(graph.all_nodes_between(map_entry, graph.exit_node(map_entry)))[1:-1])):
            #if e.data is not None and e.data.data in nm and (e.src != map_entry and e.dst != graph.exit_node(map_entry)):
            #    print(e.src, e.dst)
            if e.data is not None and e.data.data in nm and isinstance(e.dst, dace.nodes.AccessNode) and e.dst.data == nm[e.data.data]:
                e.data = dace.memlet.Memlet.from_array(nm[e.data.data], graph.sdfg.arrays[nm[e.data.data]])
            if e.data is not None and e.data.data in nm and isinstance(e.src, dace.nodes.AccessNode) and e.src.data == nm[e.data.data]:
                e.data = dace.memlet.Memlet.from_array(nm[e.data.data], graph.sdfg.arrays[nm[e.data.data]])
        for n in graph.all_nodes_between(map_entry, graph.exit_node(map_entry)):
            if isinstance(n, dace.nodes.AccessNode):
                if graph.out_degree(n) == 1:
                    oes = [oe for oe in graph.out_edges(n) if isinstance(oe.dst, dace.nodes.MapExit)]
                    if len(oes) == 1:
                        oe = oes[0]
                        t = graph.add_tasklet(name="assign", inputs={"_in"}, outputs={"_out"}, code="_out = _in")
                        graph.remove_edge(oe)
                        graph.add_edge(n, None, t, "_in", dace.memlet.Memlet.from_array(n.data, graph.sdfg.arrays[n.data]))
                        graph.add_edge(t, "_out", oe.dst, oe.dst_conn, copy.deepcopy(oe.data))

    sdfg2 = complex_gemm_soa_merged.to_sdfg()
    sdfg2.simplify()
    #aopt.auto_optimize(sdfg1, dace.DeviceType.GPU)
    rm_assign(sdfg2)
    sdfg2.validate()
    for n, g in sdfg2.all_nodes_recursive():
        if isinstance(n, dace.nodes.NestedSDFG):
            _state_fusion(n.sdfg, *list(n.sdfg.bfs_nodes()))
            n.sdfg.save("sd.sdfgz", compress=True)
    sdfg2.apply_transformations_repeated(InlineSDFG)
    sdfg2.validate()
    for s in sdfg2.all_states():
        for n in s.nodes():
            if isinstance(n, dace.nodes.MapEntry):
                _move_acc_to_tmp(s, n, ["Cr", "Cim"])
    sdfg2.validate()

    sdfg2.save("complex_gemm_soa.sdfgz", compress=True)



# Generate random data
complex_A = np.random.random((_M, _K)).astype(complex_type)
complex_B = np.random.random((_K, _N)).astype(complex_type)
complex_C = complex_A @ complex_B

if args.layout == "AoS":
    complex_A_gpu = torch.tensor(complex_A, device="cuda", dtype=gpu_complex_type)
    complex_B_gpu = torch.tensor(complex_B, device="cuda", dtype=gpu_complex_type)
    complex_C_gpu = torch.tensor(complex_C, device="cuda", dtype=gpu_complex_type)


else:
    Ar_gpu = torch.tensor(
        complex_A.real.astype(float_type), device="cuda", dtype=gpu_float_type
    )
    Br_gpu = torch.tensor(
        complex_B.real.astype(float_type), device="cuda", dtype=gpu_float_type
    )
    Cr_gpu = torch.tensor(
        complex_C.real.astype(float_type), device="cuda", dtype=gpu_float_type
    )
    Aim_gpu = torch.tensor(
        complex_A.imag.astype(float_type), device="cuda", dtype=gpu_float_type
    )
    Bim_gpu = torch.tensor(
        complex_B.imag.astype(float_type), device="cuda", dtype=gpu_float_type
    )
    Cim_gpu = torch.tensor(
        complex_C.imag.astype(float_type), device="cuda", dtype=gpu_float_type
    )

def instrument():
    for sdfg in [sdfg1] if args.layout == "AoS" else [sdfg2]:
        for s in sdfg.all_states():
            for n in s.nodes():
                # print(n, type(n))
                if isinstance(n, dace.nodes.Tasklet):
                    n.instrument = dace.InstrumentationType.GPU_Events
        sdfg.instrument = dace.InstrumentationType.Timer

if args.layout == "AoS":
    c1 = sdfg1.compile()
    c1(A=complex_A_gpu, B=complex_B_gpu, C=complex_C_gpu, M=_M, N=_N, K=_K)
    complex_C_gpu_cpu = complex_C_gpu.cpu().numpy()
    complex_error = np.max(np.abs(complex_C - complex_C_gpu_cpu))
    if np.allclose(complex_C, complex_C_gpu_cpu):
        print("The CPU and GPU arrays are almost identical.")
    else:
        print("The CPU and GPU arrays are different.")
else:

    c2 = sdfg2.compile()
    c2(
        Ar=Ar_gpu,
        Aim=Aim_gpu,
        Br=Br_gpu,
        Bim=Bim_gpu,
        Cr=Cr_gpu,
        Cim=Cim_gpu,
        M=_M,
        N=_N,
        K=_K,
        )
    complex_C_gpu_cpu_real = Cr_gpu.cpu().numpy()
    complex_C_gpu_cpu_im = Cim_gpu.cpu().numpy()
    real_error = np.max(np.abs(complex_C.real.astype(float_type) - complex_C_gpu_cpu_real))
    imag_error = np.max(np.abs(complex_C.imag.astype(float_type) - complex_C_gpu_cpu_im))

    if np.allclose(complex_C.real.astype(float_type), complex_C_gpu_cpu_real):
        print("The CPU and GPU arrays are almost identical.")
    else:
        print("The CPU and GPU arrays are different.")
    if np.allclose(complex_C.imag.astype(float_type), complex_C_gpu_cpu_im):
        print("The CPU and GPU arrays are almost identical.")
    else:
        print("The CPU and GPU arrays are different.")



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

thread_coarsening_2D = [(x, y) for x, y in list(itertools.product(
    [2], [2]))]
block_sizes_2D = [(x, y) for x, y in list(itertools.product(
    [32], [8],))
    if x * y <= 1024 and (x * y) % (warp_size) == 0 and x * y >= warp_size]

thread_coarsening = thread_coarsening_2D
block_sizes = block_sizes_2D

if args.layout == "AoS":
    sdfg = sdfg1
    inputs = {
        "A":complex_A_gpu,
        "B":complex_B_gpu,
        "C":complex_C_gpu,
        "M":_M,
        "N":_N,
        "K":_K,
    }
else:
    sdfg = sdfg2
    inputs = {
        "Ar":Ar_gpu,
        "Aim":Aim_gpu,
        "Br":Br_gpu,
        "Bim":Bim_gpu,
        "Cr":Cr_gpu,
        "Cim":Cim_gpu,
        "M":_M,
        "N":_N,
        "K":_K,
    }
dace.Config.set('compiler', 'cpu', 'args', value='-march=native -mtune=native -flto -Ofast -std=c++17 -fPIC')
dace.Config.set('compiler', 'cuda', 'args', value='-march=native --use_fast_math -O3 -std=c++17 --compiler-options=\"-Ofast\"')

tiled_sdfg, _ = auto_tile_gpu(
    sdfg=sdfg,
    exhaustive_search=True,
    memory_tiling_parameters=memory_tiling,
    thread_coarsening_parameters=thread_coarsening,
    thread_block_parameters=block_sizes,
    apply_explicit_memory_transfers=[(True, True, False),(False, False, False)],
    apply_remainder_loop=[False],
    inputs=inputs,
    device_schedule = dace.dtypes.ScheduleType.GPU_Device,
    re_apply=False,
    verbose=True,
    timeout=500,
    random_iter=True,
    static_sram_limit=static_sram,
    bound_dims=[_M, _N],
    copy_whole=True,
    exclude_from_explicit_memory=["Cr", "Cim"],
    output_name="Cr",
)
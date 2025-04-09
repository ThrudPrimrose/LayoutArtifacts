import dace
from dace.libraries.blas.nodes import Gemm
from dace.transformation.auto import auto_optimize as aopt
import numpy as np
import torch

M = dace.symbol('M')
N = dace.symbol('N')
K = dace.symbol('K')

@dace.program
def complex_gemm_aos(
    A: dace.complex64[M, K] @ dace.StorageType.GPU_Global,
    B: dace.complex64[K, N] @ dace.StorageType.GPU_Global,
    C: dace.complex64[M, N] @ dace.StorageType.GPU_Global
    ):
    C =  A @ B

sdfg1 = complex_gemm_aos.to_sdfg(simplify=False)

aopt.auto_optimize(sdfg1, dace.DeviceType.GPU)

sdfg1.save("complex_gemm_aos.sdfgz", compress=True)



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
        sdfg.add_array(name=name, shape=shape, dtype=dace.float64, storage=dace.StorageType.GPU_Global)
    state = sdfg.add_state("main")

    Ar, Br = state.add_access("Ar"), state.add_access("Br")
    Cr = state.add_access("Cr")
    gemm1 = Gemm(name="Ar_at_Br", beta=0.0, alpha=1.0)
    gemm2 = Gemm(name="Aim_at_Br", beta=1.0, alpha=-1.0)
    gemm3 = Gemm(name="Ar_at_Bim", beta=0.0, alpha=1.0)
    gemm4 = Gemm(name="Aim_at_Br", beta=1.0, alpha=1.0)

    state.add_node(gemm1)
    state.add_edge(Ar, None, gemm1, "_a", dace.memlet.Memlet.from_array(Ar, sdfg.arrays["Ar"]))
    state.add_edge(Br, None, gemm1, "_b", dace.memlet.Memlet.from_array(Br, sdfg.arrays["Br"]))
    state.add_edge(gemm1, "_c", Cr, None, dace.memlet.Memlet.from_array(Cr, sdfg.arrays["Br"]))

    Aim, Bim, Cr2 = state.add_access("Aim"), state.add_access("Bim"), state.add_access("Cr")
    state.add_edge(Aim, None, gemm2, "_a", dace.memlet.Memlet.from_array(Aim, sdfg.arrays["Aim"]))
    state.add_edge(Bim, None, gemm2, "_b", dace.memlet.Memlet.from_array(Bim, sdfg.arrays["Bim"]))
    state.add_edge(Cr, None, gemm2, "_cin", dace.memlet.Memlet.from_array(Cr, sdfg.arrays["Br"]))
    state.add_edge(gemm2, "_c", Cr2, None, dace.memlet.Memlet.from_array(Cr, sdfg.arrays["Cr"]))

    Ar2, Bim2, Cim = state.add_access("Ar"), state.add_access("Bim"), state.add_access("Cim")
    state.add_edge(Ar2, None, gemm3, "_a", dace.memlet.Memlet.from_array(Ar2, sdfg.arrays["Ar"]))
    state.add_edge(Bim2, None, gemm3, "_b", dace.memlet.Memlet.from_array(Bim2, sdfg.arrays["Bim"]))
    state.add_edge(gemm3, "_c", Cim, None, dace.memlet.Memlet.from_array(Cim, sdfg.arrays["Cim"]))

    Ar3, Bim3, Cim2 = state.add_access("Ar"), state.add_access("Bim"), state.add_access("Cim"),
    state.add_edge(Ar3, None, gemm4, "_a", dace.memlet.Memlet.from_array(Ar2, sdfg.arrays["Ar"]))
    state.add_edge(Bim3, None, gemm4, "_b", dace.memlet.Memlet.from_array(Bim2, sdfg.arrays["Bim"]))
    state.add_edge(Cim, None, gemm4, "_cin", dace.memlet.Memlet.from_array(Cim, sdfg.arrays["Cim"]))
    state.add_edge(gemm4, "_c", Cim2, None, dace.memlet.Memlet.from_array(Cim2, sdfg.arrays["Cim"]))
    return sdfg


sdfg2 = complex_gemm_soa()
aopt.auto_optimize(sdfg2, dace.DeviceType.GPU)

sdfg2.save("complex_gemm_soa.sdfgz", compress=True)

_M = 2048
_N = 2048
_K = 2048

# Generate random data
complex_A = np.random.random((_M, _K)).astype(np.complex64)
complex_B = np.random.random((_K, _N)).astype(np.complex64)
complex_C = complex_A @ complex_B

complex_A_gpu = torch.tensor(complex_A, device='cuda', dtype=torch.complex64)
complex_B_gpu = torch.tensor(complex_B, device='cuda', dtype=torch.complex64)
complex_C_gpu = torch.tensor(complex_C, device='cuda', dtype=torch.complex64)

Ar_gpu = torch.tensor(complex_A.real.astype(np.float64), device='cuda', dtype=torch.float64)
Br_gpu = torch.tensor(complex_B.real.astype(np.float64), device='cuda', dtype=torch.float64)
Cr_gpu = torch.tensor(complex_C.real.astype(np.float64), device='cuda', dtype=torch.float64)
Aim_gpu = torch.tensor(complex_A.imag.astype(np.float64), device='cuda', dtype=torch.float64)
Bim_gpu = torch.tensor(complex_B.imag.astype(np.float64), device='cuda', dtype=torch.float64)
Cim_gpu = torch.tensor(complex_C.imag.astype(np.float64), device='cuda', dtype=torch.float64)


for sdfg in [sdfg1, sdfg2]:
    for s in sdfg.all_states():
        for n in s.nodes():
            if isinstance(n, Gemm):
                n.instrument = dace.InstrumentationType.GPU_Events


sdfg1.compile()
sdfg2.compile()

sdfg1(complex_A=complex_A_gpu, complex_B=complex_B_gpu, complex_C=complex_C_gpu, M=_M, N=_N, K=_K)
complex_C_gpu_cpu = complex_C_gpu.cpu().numpy()
if np.allclose(complex_C, complex_C_gpu_cpu):
    print("The CPU and GPU arrays are almost identical.")
else:
    print("The CPU and GPU arrays are different.")


sdfg2(Ar=Ar_gpu, Aim=Aim_gpu, Br=Br_gpu, Bim=Bim_gpu, Cr=Cr_gpu, Cim=Cim_gpu, M=_M, N=_N, K=_K)
complex_C_gpu_cpu_real = Cr_gpu.cpu().numpy()
complex_C_gpu_cpu_im =  Cim_gpu.cpu().numpy()
if np.allclose(complex_C.real.astype(np.float64), complex_C_gpu_cpu_real):
    print("The CPU and GPU arrays are almost identical.")
else:
    print("The CPU and GPU arrays are different.")
if np.allclose(complex_C.im.astype(np.float64), complex_C_gpu_cpu_im):
    print("The CPU and GPU arrays are almost identical.")
else:
    print("The CPU and GPU arrays are different.")
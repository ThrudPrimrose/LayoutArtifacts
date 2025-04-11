import dace
import numpy as np
import copy
from numpy.testing import assert_allclose
from dace.sdfg.state import SDFGState, LoopRegion
from dace.transformation.auto.auto_optimize import auto_optimize
from dace.transformation.passes import ToGPU
from simulations.copy_elimination import CopyElimination

# Simulation parameters
N = dace.symbol("N")  # size
steps = dace.symbol("steps")  # Number of simulation steps
props = dace.symbol("props")  # Number of properties (vel, acc, force, mass, etc.)
int_comps = dace.symbol("int_comps")  # Number of internal computations
ext_comps = dace.symbol("ext_comps")  # Number of external computations


# Array of Structs version
@dace.program
def param_aos(dat: dace.float64[N, props]):
    for _ in range(steps):
        # Perform internal computations
        for i1 in range(N):
            for k1 in range(int_comps):
                for p1 in range(props):
                    dat[i1, p1] += dat[i1, (p1 + 1) % props]

        # Perform external computations
        for i2 in range(N):
            for j2 in range(N):
                if i2 != j2:
                    for k2 in range(ext_comps):
                        for p2 in range(props):
                            dat[i2, p2] += dat[j2, p2]


# Struct of Arrays version
@dace.program
def param_soa(dat: dace.float64[props, N]):
    for _ in range(steps):
        # Perform internal computations
        for i1 in range(N):
            for k1 in range(int_comps):
                for p1 in range(props):
                    dat[p1, i1] += dat[(p1 + 1) % props, i1]

        # Perform external computations
        for i2 in range(N):
            for j2 in range(N):
                if i2 != j2:
                    for k2 in range(ext_comps):
                        for p2 in range(props):
                            dat[p2, i2] += dat[p2, j2]


# Function to check correctness of both implemenations
def check_correctness(verbose=False) -> bool:
    aos = param_aos.to_sdfg()
    soa = param_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    # breaks:
    # auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    # auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos_ce = copy.deepcopy(aos)
    soa_ce = copy.deepcopy(soa)
    aos_ce.apply_transformations(CopyElimination)
    soa_ce.apply_transformations(CopyElimination)

    _N = 1000
    _steps = 100
    _props = 13
    _int_comps = 3
    _ext_comps = 3
    dat_aos = np.random.random((_N, _props)).astype(np.float64)
    dat_soa = dat_aos.T.copy()
    assert_allclose(dat_aos, dat_soa.T)

    dat_aos_ce = copy.deepcopy(dat_aos)
    dat_soa_ce = copy.deepcopy(dat_soa)

    aos(
        dat=dat_aos,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    soa(
        dat=dat_soa,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    aos_ce(
        dat=dat_aos_ce,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    soa_ce(
        dat=dat_soa_ce,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    assert_allclose(dat_aos, dat_soa.T)
    assert_allclose(dat_aos_ce, dat_soa_ce.T)
    assert_allclose(dat_aos, dat_aos_ce)
    assert_allclose(dat_soa, dat_soa_ce)
    return True


# Function to run the benchmark
def run_benchmark(csv_filepath: str) -> None:
    aos = param_aos.to_sdfg()
    soa = param_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    # breaks:
    # auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    # auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos.apply_transformations(CopyElimination)
    soa.apply_transformations(CopyElimination)

    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Parameters
    _steps = 1
    _props = 2**3
    _int_comps = 0
    _ext_comps = 100
    reps = 10
    Ns = [2 ** (i + 2) for i in range(10)]

    # write csv file header
    with open(csv_filepath, "w") as f:
        f.write("Name,N,Time(us)\n")

    # Measure performance for different sizes
    aos_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        dat = np.random.random((N, _props)).astype(np.float64)
        aos_obj(
            dat=dat,
            N=N,
            steps=_steps,
            props=_props,
            int_comps=_int_comps,
            ext_comps=_ext_comps,
        )

        for _ in range(reps):
            aos.clear_instrumentation_reports()
            dat = np.random.random((N, _props)).astype(np.float64)
            aos_obj(
                dat=dat,
                N=N,
                steps=_steps,
                props=_props,
                int_comps=_int_comps,
                ext_comps=_ext_comps,
            )
            time = aos.get_latest_report().events[0].duration
            aos_times[N].append(time)

    soa_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        dat = np.random.random((_props, N)).astype(np.float64)
        soa_obj(
            dat=dat,
            N=N,
            steps=_steps,
            props=_props,
            int_comps=_int_comps,
            ext_comps=_ext_comps,
        )

        for _ in range(reps):
            soa.clear_instrumentation_reports()
            dat = np.random.random((N, _props)).astype(np.float64)
            soa_obj(
                dat=dat,
                N=N,
                steps=_steps,
                props=_props,
                int_comps=_int_comps,
                ext_comps=_ext_comps,
            )
            time = soa.get_latest_report().events[0].duration
            soa_times[N].append(time)

    # write csv file data
    with open(csv_filepath, "a") as f:
        for k, v in aos_times.items():
            for t in v:
                f.write(f"AoS,{k},{t}\n")
        for k, v in soa_times.items():
            for t in v:
                f.write(f"SoA,{k},{t}\n")


if __name__ == "__main__":
    aos = param_aos.to_sdfg()
    soa = param_soa.to_sdfg()

    # Sizes
    _N = 1000
    _steps = 100
    _props = 13
    _int_comps = 20
    _ext_comps = 0

    # Generate random data
    dat = np.random.random((_N, _props)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Measure performance
    aos_obj(
        dat=dat,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    soa_obj(
        dat=dat,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )

    aos_time = aos.get_latest_report().events[0].duration
    soa_time = soa.get_latest_report().events[0].duration

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

import dace
import numpy as np
import numpy as np
import copy
from numpy.testing import assert_allclose
from dace.sdfg.state import SDFGState, LoopRegion
from dace.transformation.auto.auto_optimize import auto_optimize
from simulations.copy_elimination import CopyElimination

# Simulation parameters
N = dace.symbol("N")  # Number of bodies
steps = dace.symbol("steps")  # Number of simulation steps
dt = dace.symbol("dt", dace.float64)  # Time step (in seconds)

# Struct definition for the properties of each body
props = dace.struct(
    "props",
    posx=dace.float64,  # 0, position
    posy=dace.float64,
    posz=dace.float64,
    orientx=dace.float64,  # 3, orientation
    orienty=dace.float64,
    orientz=dace.float64,
    px=dace.float64,  # 6, momentum
    py=dace.float64,
    pz=dace.float64,
    Lx=dace.float64,  # 9, angular momentum
    Ly=dace.float64,
    Lz=dace.float64,
    inertiaxx=dace.float64,  # 12, moment of inertia
    inertiaxy=dace.float64,
    inertiaxz=dace.float64,
    inertiayx=dace.float64,
    inertiayy=dace.float64,
    inertiayz=dace.float64,
    inertiazx=dace.float64,
    inertiazy=dace.float64,
    inertiazz=dace.float64,
    mass=dace.float64,  # 21, mass
)


# Array of Structs version
@dace.program
def rigid_body_aos(bodies: dace.float64[N, 22]):
    for _ in range(steps):
        for i in range(N):
            # Update position
            for d in range(3):
                bodies[i][d] += dt * bodies[i][d + 6] / bodies[i][21]
            # Assume I is already inverted and all are in the local frame:
            # w = I * L
            w = np.zeros(3)
            for d2 in range(3):
                for j in range(3):
                    w[d2] += bodies[i][12 + d2 * 3 + j] * bodies[i][j + 9]
            # Update orientation
            for d3 in range(3):
                bodies[i][d3 + 3] += dt * w[d3]


# Struct of Arrays version
@dace.program
def rigid_body_soa(bodies: dace.float64[22, N]):
    for _ in range(steps):
        for i in range(N):
            # Update position
            for d in range(3):
                bodies[d][i] += dt * bodies[d + 6][i] / bodies[21][i]
            # Assume I is already inverted and all are in the local frame:
            # w = I * L
            w = np.zeros(3)
            for d2 in range(3):
                for j in range(3):
                    w[d2] += bodies[12 + d2 * 3 + j][i] * bodies[j + 9][i]
            # Update orientation
            for d3 in range(3):
                bodies[d3 + 3][i] += dt * w[d3]


# Function to check correctness of both implemenations
def check_correctness(verbose=False) -> bool:
    aos = rigid_body_aos.to_sdfg()
    soa = rigid_body_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    # breaks:
    # auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    # auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos_ce = copy.deepcopy(aos)
    soa_ce = copy.deepcopy(soa)
    aos_ce.apply_transformations(CopyElimination)
    soa_ce.apply_transformations(CopyElimination)

    _N = 100
    _steps = 100
    _dt = 0.01
    bodies_aos = np.random.random((_N, 22)).astype(np.float64)
    bodies_soa = bodies_aos.T.copy()
    assert_allclose(bodies_aos, bodies_soa.T)

    bodies_aos_ce = copy.deepcopy(bodies_aos)
    bodies_soa_ce = copy.deepcopy(bodies_soa)

    aos(bodies=bodies_aos, N=_N, steps=_steps, dt=_dt)
    soa(bodies=bodies_soa, N=_N, steps=_steps, dt=_dt)
    aos_ce(bodies=bodies_aos_ce, N=_N, steps=_steps, dt=_dt)
    soa_ce(bodies=bodies_soa_ce, N=_N, steps=_steps, dt=_dt)
    assert_allclose(bodies_aos, bodies_soa.T)
    assert_allclose(bodies_aos_ce, bodies_soa_ce.T)
    assert_allclose(bodies_aos, bodies_aos_ce)
    assert_allclose(bodies_soa, bodies_soa_ce)
    return True


# Function to run the benchmark
def run_benchmark(csv_filepath: str) -> None:
    aos = rigid_body_aos.to_sdfg()
    soa = rigid_body_soa.to_sdfg()
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
    _dt = 0.01
    reps = 10
    Ns = [2 ** (i + 2) for i in range(20)]

    # write csv file header
    with open(csv_filepath, "w") as f:
        f.write("Name,N,Time(us)\n")

    # Measure performance for different sizes
    aos_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        bodies = np.random.random((N, 22)).astype(np.float64)
        aos_obj(bodies=bodies, N=N, steps=_steps, dt=_dt)

        for _ in range(reps):
            aos.clear_instrumentation_reports()
            bodies = np.random.random((N, 22)).astype(np.float64)
            aos_obj(bodies=bodies, N=N, steps=_steps, dt=_dt)
            time = aos.get_latest_report().events[0].duration
            aos_times[N].append(time)

    soa_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        bodies = np.random.random((N, 22)).astype(np.float64)
        soa_obj(bodies=bodies, N=N, steps=_steps, dt=_dt)

        for _ in range(reps):
            soa.clear_instrumentation_reports()
            bodies = np.random.random((N, 22)).astype(np.float64)
            soa_obj(bodies=bodies, N=N, steps=_steps, dt=_dt)
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
    aos = rigid_body_aos.to_sdfg()
    soa = rigid_body_soa.to_sdfg()

    # Sizes
    _N = 1000
    _steps = 100
    _dt = 0.01

    # Generate random data
    bodies = np.random.random((_N, 22)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Measure performance
    aos_obj(bodies=bodies, N=_N, steps=_steps, dt=_dt)
    soa_obj(bodies=bodies, N=_N, steps=_steps, dt=_dt)

    aos_time = aos.get_latest_report().events[0].duration
    soa_time = soa.get_latest_report().events[0].duration

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

import dace
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
dims = dace.symbol("dims")  # Number of dimensions (x, y, z, ...)

# Struct definition for the properties of each body
props = dace.struct(
    "props",
    posx=dace.float64,  # 0, 0*dims
    posy=dace.float64,
    posz=dace.float64,
    velx=dace.float64,  # 3, 1*dims
    vely=dace.float64,
    velz=dace.float64,
    accx=dace.float64,  # 6, 2*dims
    accy=dace.float64,
    accz=dace.float64,
    forcex=dace.float64,  # 9, 3*dims
    forcey=dace.float64,
    forcez=dace.float64,
    mass=dace.float64,  # 12, 4*dims
)


# Array of Structs version
@dace.program
def nbody_aos(bodies: dace.float64[N, 4 * dims + 1]):
    for _ in range(steps):
        # Update the position and velocity of each body
        for i in range(N):
            for d in range(dims):
                bodies[i][d] += bodies[i][d + dims] * dt
                bodies[i][d + dims] += bodies[i][d + 2 * dims] * dt

        # Calculate forces between bodies
        for i in range(N):
            for d in range(dims):
                bodies[i][d + 3 * dims] = 0.0
            for j in range(N):
                if i != j:
                    dist = 0.0
                    for d in range(dims):
                        dist += (bodies[j][d] - bodies[i][d]) ** 2
                    dist = dist**0.5

                    force_mag = (bodies[i][4 * dims - 1] * bodies[j][4 * dims]) / (
                        dist**2
                    )
                    for d in range(dims):
                        bodies[i][d + 3 * dims] += (
                            force_mag * (bodies[j][d] - bodies[i][d]) / dist
                        )

        # Update acceleration based on the net force
        for i in range(N):
            for d in range(dims):
                bodies[i][d + 2 * dims] = bodies[i][d + 3 * dims] / bodies[i][4 * dims]


# Struct of Arrays version
@dace.program
def nbody_soa(bodies: dace.float64[4 * dims + 1, N]):
    for _ in range(steps):
        # Update the position and velocity of each body
        for i in range(N):
            for d in range(dims):
                bodies[d][i] += bodies[d + dims][i] * dt
                bodies[d + dims][i] += bodies[d + 2 * dims][i] * dt

        # Calculate forces between bodies
        for i in range(N):
            for d in range(dims):
                bodies[d + 3 * dims][i] = 0.0
            for j in range(N):
                if i != j:
                    dist = 0.0
                    for d in range(dims):
                        dist += (bodies[d][j] - bodies[d][i]) ** 2
                    dist = dist**0.5

                    force_mag = (bodies[4 * dims - 1][i] * bodies[4 * dims][j]) / (
                        dist**2
                    )
                    for d in range(dims):
                        bodies[d + 3 * dims][i] += (
                            force_mag * (bodies[d][j] - bodies[d][i]) / dist
                        )

        # Update acceleration based on the net force
        for i in range(N):
            for d in range(dims):
                bodies[d + 2 * dims][i] = bodies[d + 3 * dims][i] / bodies[4 * dims][i]


# Function to check correctness of both implemenations
def check_correctness(verbose=False) -> bool:
    aos = nbody_aos.to_sdfg()
    soa = nbody_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos_ce = copy.deepcopy(aos)
    soa_ce = copy.deepcopy(soa)
    aos_ce.apply_transformations_repeated(CopyElimination)
    soa_ce.apply_transformations_repeated(CopyElimination)

    _N = 100
    _dims = 3
    _steps = 100
    _dt = 0.01
    bodies_aos = np.random.random((_N, 4 * _dims + 1)).astype(np.float64)
    bodies_soa = bodies_aos.T.copy()
    assert_allclose(bodies_aos, bodies_soa.T)

    bodies_aos_ce = copy.deepcopy(bodies_aos)
    bodies_soa_ce = copy.deepcopy(bodies_soa)

    aos(bodies=bodies_aos, N=_N, steps=_steps, dt=_dt, dims=_dims)
    soa(bodies=bodies_soa, N=_N, steps=_steps, dt=_dt, dims=_dims)
    aos_ce(bodies=bodies_aos_ce, N=_N, steps=_steps, dt=_dt, dims=_dims)
    soa_ce(bodies=bodies_soa_ce, N=_N, steps=_steps, dt=_dt, dims=_dims)
    assert_allclose(bodies_aos, bodies_soa.T)
    assert_allclose(bodies_aos_ce, bodies_soa_ce.T)
    assert_allclose(bodies_aos, bodies_aos_ce)
    assert_allclose(bodies_soa, bodies_soa_ce)
    return True


# Function to run the benchmark
def run_benchmark(csv_filepath: str) -> None:
    aos = nbody_aos.to_sdfg()
    soa = nbody_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)
    aos.apply_transformations_repeated(CopyElimination)
    soa.apply_transformations_repeated(CopyElimination)

    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Parameters
    _dims = 3
    _steps = 1
    _dt = 0.01
    reps = 10
    Ns = [10 ** (i + 2) for i in range(2)] + [5 * 10 ** (i + 2) for i in range(2)]

    # write csv file header
    with open(csv_filepath, "w") as f:
        f.write("Name,N,Time(us)\n")

    # Measure performance for different sizes
    aos_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        bodies = np.random.random((N, 4 * _dims + 1)).astype(np.float64)
        aos_obj(bodies=bodies, N=N, steps=_steps, dt=_dt, dims=_dims)

        for _ in range(reps):
            aos.clear_instrumentation_reports()
            bodies = np.random.random((N, 4 * _dims + 1)).astype(np.float64)
            aos_obj(bodies=bodies, N=N, steps=_steps, dt=_dt, dims=_dims)
            time = aos.get_latest_report().events[0].duration
            aos_times[N].append(time)

    soa_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        bodies = np.random.random((N, 4 * _dims + 1)).astype(np.float64)
        soa_obj(bodies=bodies, N=N, steps=_steps, dt=_dt, dims=_dims)

        for _ in range(reps):
            soa.clear_instrumentation_reports()
            bodies = np.random.random((N, 4 * _dims + 1)).astype(np.float64)
            soa_obj(bodies=bodies, N=N, steps=_steps, dt=_dt, dims=_dims)
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
    aos = nbody_aos.to_sdfg()
    soa = nbody_soa.to_sdfg()

    # Sizes
    _N = 1000
    _dims = 3
    _steps = 100
    _dt = 0.01

    # Generate random data
    bodies = np.random.random((_N, 4 * _dims + 1)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Measure performance
    aos_obj(bodies=bodies, N=_N, steps=_steps, dt=_dt, dims=_dims)
    soa_obj(bodies=bodies, N=_N, steps=_steps, dt=_dt, dims=_dims)

    aos_time = aos.get_latest_report().events[0].duration
    soa_time = soa.get_latest_report().events[0].duration

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

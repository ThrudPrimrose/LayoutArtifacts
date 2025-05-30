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

# Struct definition for the properties of each point
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
    # Spring matrix (points are connected left/right)
    kleft=dace.float64,  # 12, 4*dims
    kright=dace.float64,
    # Damping matrix (points are connected left/right)
    cleft=dace.float64,  # 14, 5*dims
    cright=dace.float64,
    mass=dace.float64,  # 16, 6*dims
)


# Array of Structs version
@dace.program
def soft_body_aos(points: dace.float64[N, 17]):
    for _ in range(steps):
        # Update the position and velocity of each point
        for i1 in range(N):
            for d1 in range(3):
                points[i1][d1] += points[i1][d1 + 3] * dt
                points[i1][d1 + 3] += points[i1][d1 + 6] * dt

        # Calculate the spring forces between points
        for i2 in range(N):
            for d2 in range(3):
                points[i2][d2 + 9] = 0.0
            # process spring of left neighbor
            idx = i2 - 1
            if i2 == 0:
                idx = N - 1
            dist = 0.0
            for d3 in range(3):
                dist += (points[idx][d3] - points[i2][d3]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0  # assuming rest length of 1.0
            force_mag = -points[i2][14] * points[i2][12] * elongation
            for d4 in range(3):
                points[i2][d4 + 9] += (
                    force_mag * (points[idx][d4] - points[i2][d4]) / dist
                )
            # process spring of right neighbor
            dist = 0.0
            for d5 in range(3):
                dist += (points[(i2 + 1) % N][d5] - points[i2][d5]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0
            force_mag = -points[i2][14] * points[i2][13] * elongation
            for d6 in range(3):
                points[i2][d6 + 9] += (
                    force_mag * (points[(i2 + 1) % N][d6] - points[i2][d6]) / dist
                )

        # Update acceleration based on the net force
        for i3 in range(N):
            for d7 in range(3):
                points[i3][d7 + 6] = points[i3][d7 + 9] / points[i3][16]


# Struct of Arrays version
@dace.program
def soft_body_soa(points: dace.float64[17, N]):
    for _ in range(steps):
        # Update the position and velocity of each point
        for i1 in range(N):
            for d1 in range(3):
                points[d1][i1] += points[d1 + 3][i1] * dt
                points[d1 + 3][i1] += points[d1 + 6][i1] * dt

        # Calculate the spring forces between points
        for i2 in range(N):
            for d2 in range(3):
                points[d2 + 9][i2] = 0.0
            # process spring of left neighbor
            idx = i2 - 1
            if i2 == 0:
                idx = N - 1
            dist = 0.0
            for d3 in range(3):
                dist += (points[d3][idx] - points[d3][i2]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0
            force_mag = -points[14][i2] * points[12][i2] * elongation
            for d4 in range(3):
                points[d4 + 9][i2] += (
                    force_mag * (points[d4][idx] - points[d4][i2]) / dist
                )
            # process spring of right neighbor
            dist = 0.0
            for d5 in range(3):
                dist += (points[d5][(i2 + 1) % N] - points[d5][i2]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0
            force_mag = -points[14][i2] * points[13][i2] * elongation
            for d6 in range(3):
                points[d6 + 9][i2] += (
                    force_mag * (points[d6][(i2 + 1) % N] - points[d6][i2]) / dist
                )

        # Update acceleration based on the net force
        for i3 in range(N):
            for d7 in range(3):
                points[d7 + 6][i3] = points[d7 + 9][i3] / points[16][i3]


# Function to check correctness of both implemenations
def check_correctness(verbose=False) -> bool:
    aos = soft_body_aos.to_sdfg()
    soa = soft_body_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos_ce = copy.deepcopy(aos)
    soa_ce = copy.deepcopy(soa)
    aos_ce.apply_transformations(CopyElimination)
    soa_ce.apply_transformations(CopyElimination)

    _N = 100
    _steps = 100
    _dt = 0.01
    points_aos = np.random.random((_N, 17)).astype(np.float64)
    points_soa = points_aos.T.copy()
    assert_allclose(points_aos, points_soa.T)

    points_aos_ce = copy.deepcopy(points_aos)
    points_soa_ce = copy.deepcopy(points_soa)

    aos(points=points_aos, N=_N, steps=_steps, dt=_dt)
    soa(points=points_soa, N=_N, steps=_steps, dt=_dt)
    aos_ce(points=points_aos_ce, N=_N, steps=_steps, dt=_dt)
    soa_ce(points=points_soa_ce, N=_N, steps=_steps, dt=_dt)
    assert_allclose(points_aos, points_soa.T)
    assert_allclose(points_aos_ce, points_soa_ce.T)
    assert_allclose(points_aos, points_aos_ce)
    assert_allclose(points_soa, points_soa_ce)
    return True


# Function to run the benchmark
def run_benchmark(csv_filepath: str) -> None:
    aos = soft_body_aos.to_sdfg()
    soa = soft_body_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

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
    Ns = [2 ** (i + 2) for i in range(22)]

    # write csv file header
    with open(csv_filepath, "w") as f:
        f.write("Name,N,Time(us)\n")

    # Measure performance for different sizes
    aos_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        points = np.random.random((N, 17)).astype(np.float64)
        aos_obj(points=points, N=N, steps=_steps, dt=_dt)

        for _ in range(reps):
            aos.clear_instrumentation_reports()
            points = np.random.random((N, 17)).astype(np.float64)
            aos_obj(points=points, N=N, steps=_steps, dt=_dt)
            time = aos.get_latest_report().events[0].duration
            aos_times[N].append(time)

    soa_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        points = np.random.random((17, N)).astype(np.float64)
        soa_obj(points=points, N=N, steps=_steps, dt=_dt)

        for _ in range(reps):
            soa.clear_instrumentation_reports()
            points = np.random.random((N, 17)).astype(np.float64)
            soa_obj(points=points, N=N, steps=_steps, dt=_dt)
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
    aos = soft_body_aos.to_sdfg()
    soa = soft_body_soa.to_sdfg()

    # Sizes
    _N = 1000000
    _steps = 100
    _dt = 0.01

    # Generate random data
    points = np.random.random((_N, 17)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Measure performance
    aos_obj(points=points, N=_N, steps=_steps, dt=_dt)
    soa_obj(points=points, N=_N, steps=_steps, dt=_dt)

    aos_time = aos.get_latest_report().events[0].duration
    soa_time = soa.get_latest_report().events[0].duration

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

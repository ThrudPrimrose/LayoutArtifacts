# Source: https://hdembinski.github.io/posts/struct_of_arrays_vs_arrays_of_structs.html
import dace
import numpy as np
from numpy.testing import assert_allclose
from dace.transformation.auto.auto_optimize import auto_optimize

# Simulation parameters
N = dace.symbol("N")  # Number of particles
steps = dace.symbol("steps")  # Number of simulation steps
step_size = dace.symbol("step_size", dace.float64)  # Step size


# Array of Structs version
@dace.program
def particle_aos(dat: dace.float64[N, 6]):
    for _ in range(steps):
        r = dat[:, :3]
        p = dat[:, 3:]
        pn = np.sqrt(p[:, 0] * p[:, 0] + p[:, 1] * p[:, 1] + p[:, 2] * p[:, 2])
        ps = step_size / pn
        for i in range(3):
            r[:, i] += p[:, i] * ps
    return dat


# Struct of Arrays version
@dace.program
def particle_soa(dat: dace.float64[6, N]):
    for _ in range(steps):
        r = dat[:3]
        p = dat[3:]
        pn = np.sqrt(p[0] * p[0] + p[1] * p[1] + p[2] * p[2])
        ps = step_size / pn
        for i in range(3):
            r[i] += p[i] * ps
    return dat


# Function to check correctness of both implemenations
def check_correctness(verbose=False) -> bool:
    aos = particle_aos.to_sdfg()
    soa = particle_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    _N = 100
    _steps = 100
    _step_size = 0.1
    particles_aos = np.random.random((_N, 6)).astype(np.float64)
    particles_soa = particles_aos.T.copy()
    assert_allclose(particles_aos, particles_soa.T)

    aos(dat=particles_aos, N=_N, steps=_steps, step_size=_step_size)
    soa(dat=particles_soa, N=_N, steps=_steps, step_size=_step_size)
    assert_allclose(particles_aos, particles_soa.T)
    return True


# Function to run the benchmark
def run_benchmark(csv_filepath: str) -> None:
    aos = particle_aos.to_sdfg()
    soa = particle_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Parameters
    _steps = 1
    _step_size = 0.01
    reps = 10
    Ns = [10 ** (i + 2) for i in range(8)]

    # write csv file header
    with open(csv_filepath, "w") as f:
        f.write("Name,N,Time(us)\n")

    # Measure performance for different sizes
    aos_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        particles = np.random.random((N, 6)).astype(np.float64)
        aos_obj(dat=particles, N=N, steps=_steps, step_size=_step_size)

        for _ in range(reps):
            aos.clear_instrumentation_reports()
            particles = np.random.random((N, 6)).astype(np.float64)
            aos_obj(dat=particles, N=N, steps=_steps, step_size=_step_size)
            time = aos.get_latest_report().events[0].duration
            aos_times[N].append(time)

    soa_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        particles = np.random.random((N, 6)).astype(np.float64)
        soa_obj(dat=particles, N=N, steps=_steps, step_size=_step_size)

        for _ in range(reps):
            soa.clear_instrumentation_reports()
            particles = np.random.random((N, 6)).astype(np.float64)
            soa_obj(dat=particles, N=N, steps=_steps, step_size=_step_size)
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
    aos = particle_aos.to_sdfg()
    soa = particle_soa.to_sdfg()

    # Sizes
    _N = 1000000
    _steps = 100
    _step_size = 0.1

    # Generate random data
    particles = np.random.random((_N, 6)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Measure performance
    aos_obj(dat=particles, N=_N, steps=_steps, step_size=_step_size)
    soa_obj(dat=particles, N=_N, steps=_steps, step_size=_step_size)

    aos_time = aos.get_latest_report().events[0].duration
    soa_time = soa.get_latest_report().events[0].duration
    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

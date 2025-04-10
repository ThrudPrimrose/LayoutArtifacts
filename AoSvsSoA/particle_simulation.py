# Source: https://hdembinski.github.io/posts/struct_of_arrays_vs_arrays_of_structs.html
import dace
import numpy as np
from numpy.testing import assert_allclose

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

    _N = 1000000
    _steps = 100
    _step_size = 0.1
    particles_aos = np.random.random((_N, 6)).astype(np.float64)
    particles_soa = particles_aos.T.copy()
    assert_allclose(particles_aos, particles_soa.T)

    aos(dat=particles_aos, N=_N, steps=_steps, step_size=_step_size)
    soa(dat=particles_soa, N=_N, steps=_steps, step_size=_step_size)
    assert_allclose(particles_aos, particles_soa.T)
    return True


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

    aos_time = list(
        list(list(aos.get_latest_report().durations.values())[0].values())[0].values()
    )[0][0]
    soa_time = list(
        list(list(soa.get_latest_report().durations.values())[0].values())[0].values()
    )[0][0]

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

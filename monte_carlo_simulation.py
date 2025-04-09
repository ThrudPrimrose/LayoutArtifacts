# Source: https://hdembinski.github.io/posts/struct_of_arrays_vs_arrays_of_structs.html
import dace
import numpy as np

# Simulation parameters
N = dace.symbol("N")  # Number of particles


# Array of Structs version
@dace.program
def monte_carlo_aos(dat: dace.float64[N, 6], step: dace.float64):
    r = dat[:, :3]
    p = dat[:, 3:]
    pn = np.sqrt(p[:, 0] * p[:, 0] + p[:, 1] * p[:, 1] + p[:, 2] * p[:, 2])
    ps = step / pn
    for i in range(3):
        r[:, i] += p[:, i] * ps
    return dat


# Struct of Arrays version
@dace.program
def monte_carlo_soa(dat: dace.float64[6, N], step: dace.float64):
    r = dat[:3]
    p = dat[3:]
    pn = np.sqrt(p[0] * p[0] + p[1] * p[1] + p[2] * p[2])
    ps = step / pn
    for i in range(3):
        r[i] += p[i] * ps
    return dat


if __name__ == "__main__":
    aos = monte_carlo_aos.to_sdfg()
    soa = monte_carlo_soa.to_sdfg()

    # Sizes
    _N = 100  # Higher => better for AoS
    _step = 0.01

    # Generate random data
    particles = np.random.random((_N, 6)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos.compile()
    soa.compile()

    # Measure performance
    aos(dat=particles, N=_N, step=_step)
    soa(dat=particles, N=_N, step=_step)

    aos_time = list(
        list(list(aos.get_latest_report().durations.values())[0].values())[0].values()
    )[0][0]
    soa_time = list(
        list(list(soa.get_latest_report().durations.values())[0].values())[0].values()
    )[0][0]

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

import dace
import numpy as np
from dace.sdfg.state import SDFGState, LoopRegion

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
        for i in range(N):
            for d in range(3):
                points[i][d] += points[i][d + 3] * dt
                points[i][d + 3] += points[i][d + 6] * dt

        # Calculate the spring forces between points
        for i in range(N):
            for d in range(3):
                points[i][d + 9] = 0.0
            # process spring of left neighbor
            dist = 0.0
            for d in range(3):
                dist += (points[(i - 1) % N][d] - points[i][d]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0  # assuming rest length of 1.0
            force_mag = -points[i][14] * points[i][12] * elongation
            for d in range(3):
                points[i][d + 9] += (
                    force_mag * (points[(i - 1) % N][d] - points[i][d]) / dist
                )
            # process spring of right neighbor
            dist = 0.0
            for d in range(3):
                dist += (points[(i + 1) % N][d] - points[i][d]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0
            force_mag = -points[i][14] * points[i][13] * elongation
            for d in range(3):
                points[i][d + 9] += (
                    force_mag * (points[(i + 1) % N][d] - points[i][d]) / dist
                )

        # Update acceleration based on the net force
        for i in range(N):
            for d in range(3):
                points[i][d + 6] = points[i][d + 9] / points[i][16]


# Struct of Arrays version
@dace.program
def soft_body_soa(points: dace.float64[17, N]):
    for _ in range(steps):
        # Update the position and velocity of each point
        for i in range(N):
            for d in range(3):
                points[d][i] += points[d + 3][i] * dt
                points[d + 3][i] += points[d + 6][i] * dt

        # Calculate the spring forces between points
        for i in range(N):
            for d in range(3):
                points[d + 9][i] = 0.0
            # process spring of left neighbor
            dist = 0.0
            for d in range(3):
                dist += (points[d][(i - 1) % N] - points[d][i]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0
            force_mag = -points[14][i] * points[12][i] * elongation
            for d in range(3):
                points[d + 9][i] += (
                    force_mag * (points[d][(i - 1) % N] - points[d][i]) / dist
                )
            # process spring of right neighbor
            dist = 0.0
            for d in range(3):
                dist += (points[d][(i + 1) % N] - points[d][i]) ** 2
            dist = dist**0.5
            elongation = dist - 1.0
            force_mag = -points[14][i] * points[13][i] * elongation
            for d in range(3):
                points[d + 9][i] += (
                    force_mag * (points[d][(i + 1) % N] - points[d][i]) / dist
                )

        # Update acceleration based on the net force
        for i in range(N):
            for d in range(3):
                points[d + 6][i] = points[d + 9][i] / points[16][i]


if __name__ == "__main__":
    aos = soft_body_aos.to_sdfg()
    soa = soft_body_soa.to_sdfg()

    # Sizes
    _N = 100000
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
    # soa_obj(points=points, N=_N, steps=_steps, dt=_dt)

    aos_time = list(
        list(list(aos.get_latest_report().durations.values())[0].values())[0].values()
    )[0][0]
    soa_time = list(
        list(list(soa.get_latest_report().durations.values())[0].values())[0].values()
    )[0][0]

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

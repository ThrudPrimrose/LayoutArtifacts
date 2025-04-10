# All the benchmarks are expected to have the following interface:
# def check_correctness(verbose) -> bool:
# def run_benchmark(csv_filepath) -> None:

import AoSvsSoA.nbody_simulation
import AoSvsSoA.particle_simulation
import AoSvsSoA.rigid_body_simulation
import AoSvsSoA.soft_body_simulation

benchmarks = [
    AoSvsSoA.nbody_simulation,
    AoSvsSoA.particle_simulation,
    AoSvsSoA.rigid_body_simulation,
    AoSvsSoA.soft_body_simulation,
]


for b in benchmarks:
    if b.check_correctness():
        print(f"✅ {b.__name__}")
    else:
        print(f"❌ {b.__name__}")

# All the benchmarks are expected to have the following interface:
# def check_correctness(verbose) -> bool:
# def run_benchmark(csv_filepath) -> None:

import os

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

# Check correctness of all benchmarks
for b in benchmarks:
    if b.check_correctness():
        print(f"✅ {b.__name__.split('.')[-1]} is correct")
    else:
        print(f"❌ {b.__name__.split('.')[-1]} is incorrect")

# ensure benchmarks folder exists
os.makedirs("measurements", exist_ok=True)


# Run benchmarks and save results to CSV
for b in benchmarks:
    b.run_benchmark(f"measurements/{b.__name__.split('.')[-1]}.csv")
    print(f"✅ {b.__name__.split('.')[-1]} benchmark done")


# TODO: Plot results
pass

#!/bin/bash
#SBATCH --partition=intelv100        # Specify the partition
#SBATCH --job-name=tiling_benchmark             # Name of the job
#SBATCH --output=tiling_benchmark_%j.out        # Standard output and error log (%j is the job ID)
#SBATCH --time=4:00:00               # Maximum runtime
#SBATCH --ntasks=1                    # Number of tasks (adjust as needed)
#SBATCH --cpus-per-task=1             # Number of CPU cores per task (adjust as needed)
#SBATCH --mem=2G                      # Amount of memory (adjust as needed)

# Load any required modules or software
module load gcc/10.2.0
module load python/3.8.12
module load cuda/12.1.1

export LD_LIBRARY_PATH=/apps/ault/spack/opt/spack/linux-centos8-zen/gcc-8.4.1/cuda-12.1.1-zbdbt4aikrp6sdems6n3t5wvqxm3tza5/lib64:$LD_LIBRARY_PATH

# Run your application or script
srun python3 runner.py                # Replace with your command or script



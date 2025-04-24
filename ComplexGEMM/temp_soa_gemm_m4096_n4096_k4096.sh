#!/bin/sh

#SBATCH --job-name="soa_gemm_m4096_n4096_k4096"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=soa_gemm_m4096_n4096_k4096.%j.o
#SBATCH --error=soa_gemm_m4096_n4096_k4096.%j.e

python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
python3.10 complex_gemm.py --layout SoA --m 4096 --n 4096 --k 4096
 # Repeat the command 50 times to circumvent abortion when illegal tiling configurations are encountered

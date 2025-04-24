#!/bin/sh

#SBATCH --job-name="aos_gemm_m16384_n16384_k16384"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=aos_gemm_m16384_n16384_k16384.%j.o
#SBATCH --error=aos_gemm_m16384_n16384_k16384.%j.e

python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
python3.10 complex_gemm.py --layout AoS --m 16384 --n 16384 --k 16384
 # Repeat the command 50 times to circumvent abortion when illegal tiling configurations are encountered

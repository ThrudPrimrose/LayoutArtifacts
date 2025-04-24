#!/bin/sh

#SBATCH --job-name="aos_gemm_m128_n32768_k512"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=aos_gemm_m128_n32768_k512.%j.o
#SBATCH --error=aos_gemm_m128_n32768_k512.%j.e

python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
python3.10 complex_gemm.py --layout AoS --m 128 --n 32768 --k 512
 # Repeat the command 50 times to circumvent abortion when illegal tiling configurations are encountered

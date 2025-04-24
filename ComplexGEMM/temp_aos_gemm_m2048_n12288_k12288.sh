#!/bin/sh

#SBATCH --job-name="aos_gemm_m2048_n12288_k12288"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=aos_gemm_m2048_n12288_k12288.%j.o
#SBATCH --error=aos_gemm_m2048_n12288_k12288.%j.e

python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
python3.10 complex_gemm.py --layout AoS --m 2048 --n 12288 --k 12288
 # Repeat the command 50 times to circumvent abortion when illegal tiling configurations are encountered

# Checkout correct commits
cd /workspace/dace
git checkout 4cb336ee93921ac34aa414e918a45f477913aa8e
cd /workspace/npbench
git checkout f819837

# Run dace-gpu and dace-gpu-auto-tile
python3.10 run_framework.py -f dace_gpu -k jacobi_2d -p XL -t 86400
python3.10 run_framework.py -f dace_gpu_auto_tile -k jacobi_2d -p XL -t 86400

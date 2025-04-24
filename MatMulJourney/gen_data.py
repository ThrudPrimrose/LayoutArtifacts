import numpy as np

M = 16384
K = 16384
N = 16384

A = np.random.rand(M, K).astype(np.float32)
B = np.random.rand(K, N).astype(np.float32)

C_ref = np.matmul(A, B)

A.tofile('matrix_A.bin')
B.tofile('matrix_B.bin')
C_ref.tofile('matrix_C_ref.bin')
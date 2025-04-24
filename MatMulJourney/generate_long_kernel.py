TX = 16
TY = 16
TM = 8
TN = 8
BM = TX * TM
BN = TY * TN
BK = 32
M = 8192
N = 8192
K = 8192
UNROLL_LEN = 512

main_loop = ""
assign_loop = ""

for i in range(0, UNROLL_LEN, BK):
    main_loop += f"___load<{BM}, {BK}>(As, A, globalRow, ik + {i}, tid, {K});\n"
    main_loop += f"___load<{BK}, {BN}>(Bs, B, ik + {i}, globalCol, tid, {N});\n"
    main_loop += f"__syncthreads();\n"
    tmp = ""
    for tm in range(TM):
        for tn in range(TN):
            for bk in range(BK):
                tmp += f"threadResults[{tm} * {TN} + {tn}] += As[(threadRow + {tm}) * {BK} + {bk}] * Bs[{bk} * {BN} + threadCol + {tn}];\n"
    main_loop += tmp
    main_loop += f"__syncthreads();\n"


for tm in range(TM):
    for tn in range(TN):
        assign_loop += f"C[(outputRow+{tm}) * {N} + outputCol + {tn}] = threadResults[{tm} * {TN} + {tn}];\n"

code_template = f"""
#pragma once
#include "cuda_util.cuh"

template <const int dimY, const int dimX>
__device__ __forceinline__ void ___load(float* shr, const float* glb, const int offsetY, const int offsetX, const int tid, const int glbX) {{
    constexpr int NumThreads = {TY} * {TX};
    if constexpr (NumThreads > dimX){{
      const int row = tid / dimX;
      const int col = tid % dimX;
      const int rowsAtATime = (NumThreads / dimX) > dimY? dimY: (NumThreads / dimX);
      const int activeThreads = rowsAtATime * dimX;
      if (tid < activeThreads){{
        #pragma unroll
        for (int loadOffset = 0; loadOffset < dimY; loadOffset += rowsAtATime) {{
            const int globalY = offsetY + row + loadOffset;
            const int globalX = offsetX + col;

            shr[(row + loadOffset) * dimX + col] = glb[globalY * glbX + globalX];
        }}
      }}
    }}
    else 
    {{
      #pragma unroll
      for (int rowOffset = 0; rowOffset < dimY; rowOffset++) {{
        const int globalY = offsetY + rowOffset;
        #pragma unroll
        for (int colOffset = tid; colOffset < dimX; colOffset += NumThreads) {{
            const int globalX = offsetX + colOffset;
            shr[rowOffset * dimX + colOffset] = glb[globalY * glbX + globalX];
        }}
      }}
    }}
}}

__global__ void manually_unrolled_matmul(const float* __restrict__ A, const float* __restrict__ B, float* __restrict__ C) {{
    constexpr int BM = {TM} * {TY};
    constexpr int BN = {TN} * {TX};
    
    __shared__ float As[{BM} * {BK}];
    __shared__ float Bs[{BK} * {BN}];
    
    float threadResults[{TM} * {TN}] = {{0.0f}};
    
    const int tid = threadIdx.x + blockDim.x * threadIdx.y;
    const int globalRow = blockIdx.y * {TY} * {TM};
    const int globalCol = blockIdx.x * {TX} * {TN};
    const int threadRow = threadIdx.y * {TM};
    const int threadCol = threadIdx.x * {TN};

    for (int ik = 0; ik < {K}; ik += {UNROLL_LEN}){{
        {main_loop}
    }}

    const int outputRow = globalRow + threadRow;
    const int outputCol = globalCol + threadCol;

    {assign_loop}
}}

void manually_unrolled_matmul_launcher(const float* __restrict__ A,
                                     const float* __restrict__ B,
                                     float* __restrict__ C) {{
    constexpr int BN = {TX} * {TN};
    constexpr int BM = {TY} * {TM};
    dim3 grid(({N} + BN - 1) / BN, ({M} + BM - 1) / BM);
    dim3 block({TX}, {TY}, 1);
    manually_unrolled_matmul<<<grid, block>>>(A, B, C);
}}
"""

with open("manually_unrolled_matmul.cuh", "w") as file:
    file.write(code_template)

import dace
import dace.transformation

N = dace.symbol("N")


@dace.program
def kernel(
    TSTEPS: dace.int64,
    vals_A: dace.float64[N, N, N],
    vals_B: dace.float64[N, N, N],
    neighbors: dace.int64[N, N, 8],
):

    for _ in range(1, TSTEPS):
        for i, j, k in dace.map[0 : N - 2, 0 : N - 2, 0 : N - 2]:
            vals_B[i + 1, j + 1, k + 1] = 0.2 * (
                vals_A[i + 1, j + 1, k + 1]
                + vals_A[i + 1, j + 1, k]
                + vals_A[i + 1, j + 1, k + 2]
                + vals_A[neighbors[i+1, j+1, 0], j + 1, neighbors[i+1, j+1, 4]]
                + vals_A[neighbors[i+1, j+1, 1], j + 1, neighbors[i+1, j+1, 5]]
                + vals_A[neighbors[i+1, j+1, 2], j + 1, neighbors[i+1, j+1, 6]]
                + vals_A[neighbors[i+1, j+1, 3], j + 1, neighbors[i+1, j+1, 7]]
            )
        for i, j, k in dace.map[0 : N - 2, 0 : N - 2, 0 : N - 2]:
            vals_A[i + 1, j + 1, k + 1] = 0.2 * (
                vals_B[i + 1, j + 1, k + 1]
                + vals_B[i + 1, j + 1, k]
                + vals_B[i + 1, j + 1, k + 2]
                + vals_B[neighbors[i+1, j+1, 0], j + 1, neighbors[i+1, j+1, 4]]
                + vals_B[neighbors[i+1, j+1, 1], j + 1, neighbors[i+1, j+1, 5]]
                + vals_B[neighbors[i+1, j+1, 2], j + 1, neighbors[i+1, j+1, 6]]
                + vals_B[neighbors[i+1, j+1, 3], j + 1, neighbors[i+1, j+1, 7]]
            )
    #return vals_A

if __name__ == "__main__":
    sdfg = kernel.to_sdfg()
    sdfg.save("unstructured_stencil_3d_u_s_u.sdfgz", compress=True)
    sdfg.validate()
    sdfg.compile()
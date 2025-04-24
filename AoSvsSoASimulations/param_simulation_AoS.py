import dace
import numpy as np
import copy
from numpy.testing import assert_allclose
from dace.sdfg.state import SDFGState, LoopRegion
from dace.transformation.auto.auto_optimize import auto_optimize
from dace.transformation.passes import ToGPU


import dace
from dace.sdfg import SDFG
from dace.sdfg import utils as sdutil
from dace.sdfg.state import SDFGState
from dace.memlet import Memlet
from dace.transformation import transformation
from dace.properties import make_properties


@make_properties
class CopyElimination(transformation.SingleStateTransformation):
    access_node = transformation.PatternNode(dace.nodes.AccessNode)

    @classmethod
    def expressions(cls):
        return [sdutil.node_path_graph(cls.access_node)]

    def annotates_memlets(self) -> bool:
        return True

    def can_be_applied(
        self,
        state: dace.SDFGState,
        expr_index: int,
        sdfg: dace.SDFG,
        permissive: bool = False,
    ):
        # Should only have a single predecessor and a single successor
        preds = state.predecessors(self.access_node)
        succs = state.successors(self.access_node)
        if len(preds) != 1 or len(succs) != 1:
            return False

        # No other uses of the access node
        accesses = [
            a
            for a, p in state.all_nodes_recursive()
            if isinstance(a, dace.nodes.AccessNode) and a.data == self.access_node.data
        ]
        if len(accesses) != 1:
            return False

        # For simplicity, we only eliminate scalars, as we otherwise need to analyze edges a bit more.
        if self.access_node.desc(sdfg).total_size != 1:
            return False

        # Also for simplicity, in and out edges should not have WCRs, be dynamic, or allow OOB
        in_edge = state.in_edges(self.access_node)[0]
        out_edge = state.out_edges(self.access_node)[0]
        if (
            in_edge.data.wcr is not None
            or out_edge.data.wcr is not None
            or in_edge.data.dynamic
            or out_edge.data.dynamic
            or in_edge.data.allow_oob
            or out_edge.data.allow_oob
        ):
            return False

        return True

    def apply(self, state: SDFGState, sdfg: SDFG):
        pred = state.predecessors(self.access_node)[0]
        succ = state.successors(self.access_node)[0]

        in_edge = state.in_edges(self.access_node)[0]
        out_edge = state.out_edges(self.access_node)[0]

        # Create new edge
        state.add_edge(
            pred,
            in_edge.src_conn,
            succ,
            out_edge.dst_conn,
            Memlet(
                expr=None,
                data=in_edge.data.data,
                subset=in_edge.data.subset,
                other_subset=out_edge.data.other_subset,
            ),
        )

        # Remove old edges and node
        state.remove_edge(in_edge)
        state.remove_edge(out_edge)
        state.remove_node(self.access_node)


# Simulation parameters
N = dace.symbol("N")  # size
steps = dace.symbol("steps")  # Number of simulation steps
props = dace.symbol("props")  # Number of properties (vel, acc, force, mass, etc.)
int_comps = dace.symbol("int_comps")  # Number of internal computations
ext_comps = dace.symbol("ext_comps")  # Number of external computations


# Array of Structs version
@dace.program
def param_aos(dat: dace.float64[N, props], int_comps: int, ext_comps: int):
    for _ in range(steps):
        # Perform internal computations
        if int_comps > 0:
            for i1 in range(N):
                for p1 in range(props):
                    dat[i1, p1] += dat[i1, (p1 + 1) % props]

        # Perform external computations
        if ext_comps > 0:
            for i2 in range(N):
                for j2 in range(N):
                    if i2 != j2:
                        dat[i2, 0] += dat[j2, 0]


# Struct of Arrays version
@dace.program
def param_soa(dat: dace.float64[props, N], int_comps: int, ext_comps: int):
    for _ in range(steps):
        # Perform internal computations
        if int_comps > 0:
            for i1 in range(N):
                for p1 in range(props):
                    dat[p1, i1] += dat[(p1 + 1) % props, i1]

        # Perform external computations
        if ext_comps > 0:
            for i2 in range(N):
                for j2 in range(N):
                    if i2 != j2:
                         dat[0, i2] += dat[0, j2]


# Function to check correctness of both implemenations
def check_correctness(verbose=False) -> bool:
    aos = param_aos.to_sdfg()
    soa = param_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    # breaks:
    # auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    # auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos_ce = copy.deepcopy(aos)
    soa_ce = copy.deepcopy(soa)
    aos_ce.apply_transformations(CopyElimination)
    soa_ce.apply_transformations(CopyElimination)

    _N = 1000
    _steps = 100
    _props = 13
    _int_comps = 1
    _ext_comps = 1
    dat_aos = np.random.random((_N, _props)).astype(np.float64)
    dat_soa = dat_aos.T.copy()
    assert_allclose(dat_aos, dat_soa.T)

    dat_aos_ce = copy.deepcopy(dat_aos)
    dat_soa_ce = copy.deepcopy(dat_soa)

    aos(
        dat=dat_aos,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    soa(
        dat=dat_soa,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    aos_ce(
        dat=dat_aos_ce,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    soa_ce(
        dat=dat_soa_ce,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    assert_allclose(dat_aos, dat_soa.T)
    assert_allclose(dat_aos_ce, dat_soa_ce.T)
    assert_allclose(dat_aos, dat_aos_ce)
    assert_allclose(dat_soa, dat_soa_ce)
    return True


# Function to run the benchmark
def run_benchmark(csv_filepath: str) -> None:
    aos = param_aos.to_sdfg()
    soa = param_soa.to_sdfg()
    aos.simplify()
    soa.simplify()
    # breaks:
    # auto_optimize(aos, device=dace.dtypes.DeviceType.CPU)
    # auto_optimize(soa, device=dace.dtypes.DeviceType.CPU)

    aos.apply_transformations(CopyElimination)
    soa.apply_transformations(CopyElimination)

    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Parameters (for AoS)
    _steps = 1
    _props = 2**14
    _int_comps = 1
    _ext_comps = 0
    reps = 10
    Ns = [2 ** (i + 4) for i in range(10)]

    # write csv file header
    with open(csv_filepath, "w") as f:
        f.write("Name,N,Time(us)\n")

    # Measure performance for different sizes
    aos_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        dat = np.random.random((N, _props)).astype(np.float64)
        aos_obj(
            dat=dat,
            N=N,
            steps=_steps,
            props=_props,
            int_comps=_int_comps,
            ext_comps=_ext_comps,
        )

        for _ in range(reps):
            aos.clear_instrumentation_reports()
            dat = np.random.random((N, _props)).astype(np.float64)
            aos_obj(
                dat=dat,
                N=N,
                steps=_steps,
                props=_props,
                int_comps=_int_comps,
                ext_comps=_ext_comps,
            )
            time = aos.get_latest_report().events[0].duration
            aos_times[N].append(time)

    soa_times = {k: [] for k in Ns}
    for N in Ns:
        # Warmup
        dat = np.random.random((_props, N)).astype(np.float64)
        soa_obj(
            dat=dat,
            N=N,
            steps=_steps,
            props=_props,
            int_comps=_int_comps,
            ext_comps=_ext_comps,
        )

        for _ in range(reps):
            soa.clear_instrumentation_reports()
            dat = np.random.random((N, _props)).astype(np.float64)
            soa_obj(
                dat=dat,
                N=N,
                steps=_steps,
                props=_props,
                int_comps=_int_comps,
                ext_comps=_ext_comps,
            )
            time = soa.get_latest_report().events[0].duration
            soa_times[N].append(time)

    # write csv file data
    with open(csv_filepath, "a") as f:
        for k, v in aos_times.items():
            for t in v:
                f.write(f"AoS,{k},{t}\n")
        for k, v in soa_times.items():
            for t in v:
                f.write(f"SoA,{k},{t}\n")


if __name__ == "__main__":
    aos = param_aos.to_sdfg()
    soa = param_soa.to_sdfg()

    # Sizes
    _N = 1000
    _steps = 100
    _props = 13
    _int_comps = 1
    _ext_comps = 1

    # Generate random data
    dat = np.random.random((_N, _props)).astype(np.float64)

    # Add instrumentation
    aos.instrument = dace.InstrumentationType.Timer
    soa.instrument = dace.InstrumentationType.Timer

    # Compile the SDFGs
    aos_obj = aos.compile()
    soa_obj = soa.compile()

    # Measure performance
    aos_obj(
        dat=dat,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )
    soa_obj(
        dat=dat,
        N=_N,
        steps=_steps,
        props=_props,
        int_comps=_int_comps,
        ext_comps=_ext_comps,
    )

    aos_time = aos.get_latest_report().events[0].duration
    soa_time = soa.get_latest_report().events[0].duration

    print(f"AoS Time: {aos_time} us")
    print(f"SoA Time: {soa_time} us")

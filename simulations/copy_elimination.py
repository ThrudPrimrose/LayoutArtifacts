"""
Eliminates intermediate copies such as A -> tmp -> B, if tmp is not used anywhere else.
"""

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

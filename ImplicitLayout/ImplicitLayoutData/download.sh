#!/bin/bash

# Define source file paths (modify these as needed)
HPCFUND_FILE1="ybudanaz@hpcfund.amd.com:/work1/hoefler/ybudanaz/npbench/npbench.db"
AULT_FILE1="ybudanaz@ault:/scratch/ybudanaz/npbench_v100/npbench.db"
AULT_FILE2="ybudanaz@ault:/scratch/ybudanaz/npbench_a100/npbench.db"
AULT_FILE3="ybudanaz@ault:/scratch/ybudanaz/npbench_dace_cpu_auto_tile/npbench.db"
NID_FILE1="ybudanaz@nid:/capstor/scratch/cscs/ybudanaz/npbench/npbench.db"
CLARIDEN_FILE1="ybudanaz@clariden:/iopsstor/scratch/cscs/ybudanaz/npbench/npbench.db"

# Define destination directory
DEST_DIR1="mi250x"
DEST_DIR2="v100"
DEST_DIR3="a100"
DEST_DIR4="epyc7742"
DEST_DIR5="mi300a"
DEST_DIR6="gh200"

# Download files using scp
scp "$HPCFUND_FILE1" "$DEST_DIR1"
scp "$AULT_FILE1" "$DEST_DIR2"
scp "$AULT_FILE2" "$DEST_DIR3"
scp "$AULT_FILE3" "$DEST_DIR4"
scp "$NID_FILE1" "$DEST_DIR5"
scp "$CLARIDEN_FILE1" "$DEST_DIR6"

echo "All files downloaded successfully to $DEST_DIR"


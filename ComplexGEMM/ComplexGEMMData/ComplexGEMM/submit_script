#!/bin/bash

# Submit all *.sh scripts in the current directory
for script in *.sh; do
    if [[ -f "$script" ]]; then
        echo "Running: $script"
        sbatch "$script"
    fi
done

# Checkout correct DaCe branch and version
cd /workspace/dace
git checkout b86a31f03af49663dd7fe565e7986836df3350bc
cd /workspace/artifacts/ComplexGEMM

# Generate submission scripts for Docker
python3.10 submit_docker.py

# Run the generated scripts
for script in ./temp_*; do
    if [[ -f "$script" ]]; then
        # Make the script executable if it is not
        if [[ ! -x "$script" ]]; then
            echo "Making $script executable..."
            chmod +x "$script"
        fi
        echo "Running $script..."
        "$script"
    fi
done
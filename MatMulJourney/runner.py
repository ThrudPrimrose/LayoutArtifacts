import subprocess
import os
import csv

T = [(16, 16), (32, 1), (32, 2), (32, 4), (32, 8), (32, 16), (32, 32),
     (64, 1), (64, 2), (64, 4), (64, 8), (64, 16),
     (128, 1), (128, 2), (128, 4), (128, 8), (256, 1), (256, 2), (256, 4)]
TM = [1, 2, 4, 8, 16]
TN = [1, 2, 4, 8, 16]
BK = [16, 32, 64, 128]
arch = 80

# Define paths and parameters
cuda_file = 'matmul.cu'
output_executable = './matmul'  # Name of the compiled executable
output_csv = 'output_16k_a100.csv'

configs = set()
def read_csv(file_path):
    data = []

    if os.path.exists(file_path):
        try:
            with open(file_path, mode='r', newline='') as file:
                reader = csv.reader(file)
                for row in reader:
                    data.append(row)
                    configs.add(row[1] + "-" + row[2] + "-" + row[3]  + "-" + row[4] + "-" + row[5])
            print(f"File '{file_path}' read successfully.")
        except IOError as e:
            print(f"Error reading file {file_path}: {e}")
    else:
        print(f"File '{file_path}' does not exist.")

    return data

# Read the CSV file into a dictionary
data = read_csv(output_csv)
print(data)

# Create and write to the output.csv file
if not os.path.exists(output_csv):
    try:
        with open(output_csv, 'a', newline='') as file:
            file.write('Identifier, tX, tY, bK, tM, tN, time, GFLOPs, percentagePeak\n')  # Example line of headers or data
        print(f"File '{output_csv}' created and written successfully.")
    except IOError as e:
        print(f"Error creating or writing to {output_csv}: {e}")
        exit(1)

for i in range(10):
    for tx,ty in T:
        for tm in TM:
            for tn in TN:
                for bk in BK:
                    assert tn != 0
                    assert tm != 0
                    next_config = str(ty) + "-" + str(tx) + "-" + str(bk) + "-" + str(tm) + "-" + str(tn)
                    #if next_config in configs:
                    #    #    continue
                    #    pass
                    #else:
                    #    print("Test config: ", next_config)
                    # Compile the CUDA code using nvcc
                    compile_command = (
                        f'nvcc -arch=sm_{arch} {cuda_file} -DNDEBUG -std=c++17 -Xcompiler=-std=c++17 --expt-relaxed-constexpr '
                        f'-DPTX={tx} -DPTY={ty} -DPBK={bk} -DPTM={tm} -DPTN={tn} '
                        '-lcublas -o ' + output_executable
                    )

                    try:
                        # Run the compilation command
                        subprocess.run(compile_command, shell=True, check=True)
                        print("Compilation successful.")
                    except subprocess.CalledProcessError as e:
                        print(f"Compilation failed: {e}")
                    try:
                        run_command = output_executable
                        #run_command = f"ncu --set=full -f -o {output_executable}-report {output_executable}"
                        result = subprocess.run(run_command, shell=True, check=True, capture_output=True, text=True)
                        print("Executable ran successfully.")
                        print("Output:")
                        print(result.stdout)
                    except subprocess.CalledProcessError as e:
                        print(f"Executable run failed: {e}")
                        print("Error Output:")
                        print(e.stderr)

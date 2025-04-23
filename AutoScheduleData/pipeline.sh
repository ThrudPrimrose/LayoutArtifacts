rm npbench.db
rm a100/npbench.db
rm v100/npbench.db
rm mi250x/npbench.db
rm epyc7742/npbench.db
./download.sh
python merge.py
python plot_results.py -p XL
python plot2.py
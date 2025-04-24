import os
import sqlite3
import pandas as pd
from glob import glob

# Define folders and output database
folders = ["a100", "v100", "mi250x", "epyc7742", "mi300a", "gh200"]
output_db = "npbench.db"
cpu_from = "epyc7742"

try:
    os.remove("npbench.db")
except FileNotFoundError:
    pass

# Connect to the output database
conn_out = sqlite3.connect(output_db)
cursor_out = conn_out.cursor()


for folder in folders:
    db_files = glob(os.path.join(folder, "*.db"))  # Get all SQLite files in the folder

    for db_file in db_files:
        conn_in = sqlite3.connect(db_file)
        cursor_in = conn_in.cursor()

        # Get all tables in the database
        cursor_in.execute("SELECT name FROM sqlite_master WHERE type='table';")
        tables = [row[0] for row in cursor_in.fetchall()]

        for table in tables:
            df = pd.read_sql(f"SELECT * FROM {table}", conn_in)

            # Filter out rows where framework == 'numpy'
            #df = df[df["framework"] != "numpy"] if folder != cpu_from else df

            # Add the device column based on folder name
            df["device"] = folder

            df.loc[df["framework"] != "numpy", "framework"] = df["device"] + " " + df["framework"]

            # Append to output database
            df.to_sql(table, conn_out, if_exists="append", index=False)

        conn_in.close()

conn_out.close()

print("Databases merged successfully!")

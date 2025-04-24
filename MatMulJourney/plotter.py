import pandas as pd
import matplotlib.pyplot as plt
import math
import numpy as np

devs = [
    #("v100", 14131.20016351584),
    #("16k_a100", 19491.83984564754),
    ("a100", 19491.83984564754)
]  # ("16k_a100", 19491.83984564754), ("a100", 19491.83984564754),


# Plotting function
def create_scatter_plot(
    df,
    title,
    label,
    color,
    ylim,
    special_nodes=None,
    special_label="",
    current_node=None,
):
    plt.figure(figsize=(9, 6))

    # Scatter plot for the chosen product implementation
    # best_row = df[df['percentagePeak'].idxmax()]
    max_row = df[df["GFLOPs"] == df["GFLOPs"].max()]

    plt.axhline(
        y=cublas_avg["GFLOPs"],
        zorder=1,
        color="green",
        linestyle="-",
        label="cuBLAS (Average)",
    )

    plt.scatter(df["label"], df["GFLOPs"], color="gray", label=label, marker="P", s=5)
    if special_nodes is None:
        raise Exception("UWU")
    if special_nodes is not None:
        plt.scatter(
            special_nodes["label"],
            special_nodes["GFLOPs"],
            color="red",
            label=special_label,
            marker="X",
            s=50,
        )
    if current_node is not None:
        plt.scatter(
            current_node["label"],
            current_node["GFLOPs"],
            color="green",
            label="Current Center",
            marker="X",
            s=50,
        )
    onedone = False
    twodone = False
    threedone = False
    if special_nodes is None:
        for i, row in df.iterrows():
            if row["label"] == "16,16,16,8,8" and not onedone:
                onedone = True
                plt.scatter(
                    row["label"],
                    row["GFLOPs"],
                    color="red",
                    marker="*",
                    s=200,
                    label=f"My Guess 1 ({row['label']})",
                )
            elif row["label"] == "16,16,32,4,4" and not twodone:
                twodone = True
                plt.scatter(
                    row["label"],
                    row["GFLOPs"],
                    color="lightgreen",
                    marker="D",
                    s=120,
                    label=f"My Guess 2 ({row['label']})",
                )
            elif row["label"] == "16,16,16,12,12" and not threedone:
                threedone = True
                plt.scatter(
                    row["label"],
                    row["GFLOPs"],
                    color="orange",
                    marker="s",
                    s=120,
                    label=f"My Guess 3 ({row['label']})",
                )

    l = max_row["label"].item()
    if special_nodes is None:
        plt.scatter(
            max_row["label"],
            max_row["GFLOPs"],
            color="purple",
            marker="o",
            s=150,
            label=f"Best Performing Tiling (" + l + ")",
        )

    print(dev, title, max_row["GFLOPs"] / cublas_avg["GFLOPs"])

    # Line for cuBLAS average
    # plt.axhline(y=cublas_avg['percentagePeak'], color='green', linestyle='-', label='cuBLAS (Average)')
    # plt.axvline(x=cublas_avg['GFLOPs'], color='green', linestyle='-')

    # Add labels and title
    plt.xlabel("Configuration (tY,tX,bK,tM,tN)")
    plt.ylabel("Percentage Peak")
    plt.title(f"Comparison of {label.replace("Cto", "")} and cuBLAS")
    # plt.xticks(ticks=range(len(df['label'])), labels=[])
    plt.xticks(ticks=[])
    plt.ylim(0, ylim)

    # Add a legend
    plt.xticks(rotation=90, ha="right")
    plt.legend(
        loc="upper center", bbox_to_anchor=(0.5, -0.05), ncol=2, frameon=True
    )  # Centered below the plot, no frame
    plt.tight_layout()
    # Display the plot
    plt.savefig(f"{title}_{dev}.png")

    df = pd.DataFrame(df)

    # Get the top 20 rows with the highest GFLOPs
    top_gflops = df.nlargest(20, "GFLOPs")

    if special_nodes is not None:
        plt.figure(figsize=(9, 6))
        plt.bar(top_gflops["label"], top_gflops["GFLOPs"], color="skyblue")
        plt.xlabel("Label")
        plt.ylabel("GFLOPs")
        plt.title("Top 20 Models by GFLOPs for {dev}")
        plt.xticks(rotation=90)  # Rotate x-axis labels for better visibility
        plt.legend(
            loc="upper center", bbox_to_anchor=(0.5, -0.15), ncol=2, frameon=True
        )  # Centered below the plot, no frame
        plt.tight_layout()  # Adjust layout
        plt.savefig(f"{title}_bar_{dev}.png")


def square_likeness(tM, tY, tN, tX, bK):
    r1 = bK / (tM * tY)
    r2 = (tN * tX) / bK
    r3 = (tM * tY) / (tN * tX)
    square_like_metric_1 = abs(r1 - 1)
    square_like_metric_2 = abs(r2 - 1)
    return (square_like_metric_1 + square_like_metric_2) ** 1 / 2


def closest_different_values(df, current_row, column_name):
    current_value = current_row[column_name].iloc[0]

    # Get all unique values in the column, excluding the current value
    unique_values = np.sort(df[column_name].unique())
    unique_values = unique_values[unique_values != current_value]

    # Find the values smaller and bigger than the current value
    smaller_values = unique_values[unique_values < current_value]
    bigger_values = unique_values[unique_values > current_value]

    # Take the nearest smaller and bigger values
    closest_smaller = smaller_values[-1] if len(smaller_values) > 0 else None
    closest_bigger = bigger_values[0] if len(bigger_values) > 0 else None

    # Create a list of closest values
    closest_values = [v for v in [closest_smaller, closest_bigger] if v is not None]

    # Filter rows where the column value is one of the closest different values
    result = df[df[column_name].isin(closest_values)]

    fixed_columns = ["tY", "tX", "bK", "tM", "tN"]
    fixed_columns.remove(column_name)
    filter_conditions = (df[fixed_columns] == current_row[fixed_columns].values).all(
        axis=1
    )
    return result[filter_conditions]


def search(df, initial_guess, title, label, color, ylim, current_row, id=0, prev_tests=0):
    cur_tY, cur_tX, cur_bK, cur_tM, cur_tN = initial_guess

    # Increasing memory access in Y is bad unless the access shape is more square-like (for this problem)
    # Increasing memory access in X is good
    print(current_row)
    if len(current_row) > 1:
        max_index =  current_row['GFLOPs'].idxmax()
        current_row = current_row.loc[[max_index]]
        current_row = current_row.head(1)
    r = current_row["GFLOPs"].iloc[0]
    print(type(r))
    print(df["GFLOPs"].dtype)
    better_ones = df[(df["GFLOPs"] > r)]
    #print("BETTER ONES:", better_ones)
    print(current_row)
    all_results = []
    for var, name in [
        (cur_tY, "tY"),
        (cur_tX, "tX"),
        (cur_bK, "bK"),
        (cur_tM, "tM"),
        (cur_tN, "tN"),
    ]:
        res = closest_different_values(df, current_row, name)
        all_results.append(res)
    final_result = pd.concat(all_results).drop_duplicates()
    close_ones = final_result
    print("CLOSE ONES:", close_ones)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + " Close",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=close_ones,
        special_label="Close Ones" + str(id),
        current_node=current_row,
    )

    # Filter for increasing loads in the contiguous dimension: bK > cur_bK and tN > cur_tN
    filtered_df1 = df[(df["bK"] >= cur_bK) & (df["tN"] >= cur_tN)]
    print("F1", filtered_df1)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + " Contig.",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df1,
        special_label="Longer contiguous access" + str(id),
        current_node=current_row,
    )

    def cache_fit(val):
        return np.logical_or(val % 32 == 0, np.logical_and(val < 32, 32 % val == 0))

    # Apply cache_fit function directly using numpy
    filtered_df0 = df[cache_fit(df["bK"]) & cache_fit(df["tN"] * df["tX"])]
    print("F0", filtered_df0)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + " Mult. Cache." + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df0,
        special_label="Multiple of 128 bytes",
        current_node=current_row,
    )

    filtered_df2 = df[
        (df["tX"] >= cur_tX)
        & (df["tY"] >= cur_tY)
        & (df["tY"] * df["tX"] > cur_tY * cur_tX)
    ]
    print("F2", filtered_df2)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + " More Thread"  + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df2,
        special_label="More Threads in Both Dims.",
        current_node=current_row,
    )

    sl = square_likeness(cur_tM, cur_tY, cur_tN, cur_tX, cur_bK)

    filtered_df3 = df[
        (square_likeness(df["tM"], df["tY"], df["tN"], df["tX"], df["bK"]) <= sl)
    ]
    print("F3", filtered_df3)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + " Square",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df3,
        special_label="Tile Size Closer To Square",
        current_node=current_row,
    )

    # Cache-fit & (Longer-access \ More square)
    filtered_df4 = df[((df["bK"] >= cur_bK) & (df["tN"] >= cur_tN) | (square_likeness(df["tM"], df["tY"], df["tN"], df["tX"], df["bK"]) <= sl))
                      & cache_fit(df["bK"]) & cache_fit(df["tN"] * df["tX"])]
    print("F4", filtered_df4)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + "(Tile Size Closer To Square or Longer Contigous Access) + Multiple of Cache Line Size" + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df4,
        special_label="(Tile Size Closer To Square or Longer Contigous Access) + Multiple of Cache Line Size",
        current_node=current_row,
    )

    filtered_df5 = close_ones[(((df["bK"] >= cur_bK) & (df["tN"] >= cur_tN)) | (square_likeness(df["tM"], df["tY"], df["tN"], df["tX"], df["bK"]) <= sl))
                      & cache_fit(df["bK"]) & cache_fit(df["tN"] * df["tX"])]
    print("F5", filtered_df5)
    create_scatter_plot(
        df=df,
        title=title.replace("Cto", "") + "Close (Tile Size Closer To Square or Longer Contigous Access) + Multiple of Cache Line Size + Geq. Threads" + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df5,
        special_label="Close (Tile Size Closer To Square or Longer Contigous Access) + \n Multiple of Cache Line Size + \n  Geq. Threads, Num Prev Tests: " + str(prev_tests),
        current_node=current_row,
    )
    filtered_df6 = filtered_df5.sort_values(by="percentagePeak", ascending=False)
    print(filtered_df6)
    next_cur_row = filtered_df6[["tY", "tX", "bK", "tM", "tN"]].values
    next_cur_row_perf = tuple(filtered_df6[["percentagePeak"]].values[0])[0]
    #raise Exception(tuple(next_cur_row[0]), len(filtered_df5))
    if next_cur_row_perf < current_row["percentagePeak"].iloc[0]:
        return None, len(filtered_df5)

    common_rows = pd.merge(filtered_df1, filtered_df3, how="inner")
    print("Common rows between F1 and F3:", common_rows)
    return tuple(next_cur_row[0]) if tuple(next_cur_row[0]) != initial_guess else None, len(filtered_df5)


for dev, ylim in devs:
    print(dev)
    df = pd.read_csv(f"output_{dev}.csv")

    # Filter out rows where 'time' is -1.0
    filtered_df = df[df["time"] != -1.0]

    # Create a new 'label' column by concatenating tY, tX, bK, tM, tN with commas
    filtered_df["label"] = (
        filtered_df[["tY", "tX", "bK", "tM", "tN"]].astype(str).agg(",".join, axis=1)
    )
    #current_label = ",".join(map(str, (16, 16, 32, 4, 4)))

    # Group all cuBLAS rows and calculate the average GFLOPs and percentagePeak
    cublas_df = filtered_df[filtered_df["Identifier"] == "cuBLAS"]
    cublas_avg = cublas_df[["GFLOPs", "percentagePeak"]].mean()

    # Prepare the data for the scatter plots, sorting by the label column
    outer_product_df = filtered_df[
        filtered_df["Identifier"] == "Outer-Product + No Remainder"
    ]  # .sort_values('label')
    inner_product_no_rem_df = filtered_df[
        filtered_df["Identifier"] == "Inner Product + No Remainder"
    ]  # .sort_values('label')
    inner_product_rem_df = filtered_df[
        filtered_df["Identifier"] == "Inner Product + Remainder"
    ]  # .sort_values('label')

    for _df,_name in [(outer_product_df, "Outer-Product"),(inner_product_no_rem_df, "Inner-Product CTO"), (inner_product_rem_df, "Inner-Product")]:
        print(_df)
        current_label = ",".join(map(str, (1, 32, 8, 2, 2)))
        current_row = _df[_df["label"] == current_label]
        print(current_row)
        cur_row = current_row[["tY", "tX", "bK", "tM", "tN"]].values[0]
        total_tests = 0
        for i in range(10):
            nrow, num_tests = search(
                _df,
                tuple(cur_row),
                dev + _name,
                dev + _name,
                "blue",
                ylim,
                _df[_df["label"] == current_label],
                id=i,
                prev_tests=total_tests
            )
            if nrow is None:
                total_tests += num_tests
                break
            cur_row = nrow
            total_tests += num_tests
            current_label = ",".join(map(str, cur_row))
        print(total_tests)

    """
    search(
        inner_product_rem_df,
        (16, 16, 32, 4, 4),
        "Inner Product",
        "Inner Product",
        "red",
        ylim,
        inner_product_rem_df[inner_product_rem_df["label"] == current_label],
    )
    search(
        inner_product_no_rem_df,
        (16, 16, 32, 4, 4),
        "Inner Product + Compile-Time Dimensions",
        "Inner Product + Compile-Time Dimensions",
        "orange",
        ylim,
        inner_product_no_rem_df[inner_product_no_rem_df["label"] == current_label],
    )
    """
    # Create scatter plots for each identifier
    # create_scatter_plot(outer_product_df, "Outer-Product", "Outer-Product", "blue", ylim)
    # create_scatter_plot(inner_product_no_rem_df, "Inner Product + Compile-Time Dimensions", "Inner Product + Compile-Time Dimensions", "orange", ylim)
    # create_scatter_plot(inner_product_rem_df, "Inner Product", "Inner Product", "red", ylim)

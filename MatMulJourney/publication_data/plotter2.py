from matplotlib.patches import FancyArrowPatch
import pandas as pd
import matplotlib.pyplot as plt
import math
import numpy as np
from sympy import Circle

devs = [
     ("16k_a100", 19491.83984564754),
]  #


# Plotting function
def create_scatter_plot(
    df,
    title,
    label: str,
    color,
    ylim,
    special_nodes=None,
    special_label="",
    current_node=None,
    force_tick=False,
):
    savelabel = label
    label = label.replace("_", " ").replace("CTO ", "").replace("Cto", "").replace("16K ", "").title()

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
    if current_node is not None:
        cnc = "blue"
        snc = "red"
    else:
        snc = "blue"
        cnc = "red"
    if special_nodes is not None:
        pc = plt.scatter(
            special_nodes["label"],
            special_nodes["GFLOPs"],
            color=snc,
            label=special_label,
            marker="X",
            s=50,
        )
    if special_label.startswith("Guided + Neighborhood"):
        # Calculate the speedup
        speedup = special_nodes["GFLOPs"] / cublas_avg["GFLOPs"]
        speedup_text = f"x{speedup:.2f}"

        # Add the text annotation near the special node point
        plt.text(
            special_nodes["label"],
            special_nodes["GFLOPs"] + 250,
            speedup_text,
            fontsize=12,
            ha="left",  # Horizontal alignment
            va="bottom",  # Vertical alignment
            #color=snc  # Optional: match the color of the special node
        )
    if current_node is not None:
        plt.scatter(
            current_node["label"],
            current_node["GFLOPs"],
            color=cnc,
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

    #print(dev, title, max_row["GFLOPs"] / cublas_avg["GFLOPs"])

    # Line for cuBLAS average
    # plt.axhline(y=cublas_avg['percentagePeak'], color='green', linestyle='-', label='cuBLAS (Average)')
    # plt.axvline(x=cublas_avg['GFLOPs'], color='green', linestyle='-')

    # Add labels and title
    plt.xlabel("Configuration (tY,tX,bK,tM,tN)")
    plt.ylabel("GFLOPs/s")
    plt.title(f"Comparison of {label} GEMM and cuBLAS")
    # plt.xticks(ticks=range(len(df['label'])), labels=[])
    if not force_tick:
        plt.xticks(ticks=[])
    plt.ylim(0, ylim)

    # Add a legend
    plt.xticks(rotation=90, ha="right")
    plt.legend(
        loc="upper center",
        bbox_to_anchor=(0.5, -0.05 if not force_tick else -0.45),
        ncol=2,
        frameon=True,
    )  # Centered below the plot, no frame
    plt.grid(visible="both", which="both")
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
        plt.title(f"Top 20 Models by GFLOPs for {dev}")
        plt.xticks(rotation=90)  # Rotate x-axis labels for better visibility
        plt.legend(
            loc="upper center", bbox_to_anchor=(0.5, -0.15), ncol=2, frameon=True
        )  # Centered below the plot, no frame
        plt.grid(visible="both")
        plt.tight_layout()  # Adjust layout
        plt.savefig(f"{title}_bar_{dev}.png")



# Plotting function
def create_scatter_plot_with_history(
    df,
    title,
    label: str,
    color,
    ylim,
    special_nodes=None,
    special_label="",
    current_node=None,
    force_tick=False,
    history=[],
    color_history=[],
):
    savelabel = label
    label = label.replace("_", " ").replace("CTO ", "").replace("Cto", "").replace("16K ", "").title()
    import seaborn as sns
    sns.set(style="whitegrid")
    plt.figure(figsize=(6, 6.5))

    # Scatter plot for the chosen product implementation
    # best_row = df[df['percentagePeak'].idxmax()]
    max_row = df[df["GFLOPs"] == df["GFLOPs"].max()]

    plt.axhline(
        y=cublas_avg["GFLOPs"],
        zorder=1,
        color="green",
        linestyle="-",
        label="cuBLAS",
    )

    plt.scatter(df["label"], df["GFLOPs"], color="gray", marker="P", s=5)

    if special_label.startswith("Guided + Neighborhood"):
        # Calculate the speedup
        pass

    onedone = False
    twodone = False
    threedone = False

    l = max_row["label"].item()
    if special_nodes is None:
        plt.scatter(
            max_row["label"],
            max_row["GFLOPs"],
            color="purple",
            marker="o",
            s=150,
        )

    print(history)
    for i,  v in enumerate(history):
        print(v)
        plt.scatter(
            v["label"],
            v["GFLOPs"],
            color=color_history[i] if i != 0 and v["label"] != history[0]["label"] else "green",
            marker="o",
            s=20,
        )
    special_nodes = history[-2]
    speedup = special_nodes["GFLOPs"] / cublas_avg["GFLOPs"]
    speedup_text = f"{speedup:.2f}x speedup over cuBLAS"

    for i in range(1, 4):
        src = history[i]
        dst = history[i + 1]
        src_color = color_history[i]
        dst_color = color_history[i + 1]

        x_values = [src["label"], dst["label"]]
        y_values = [src["GFLOPs"], dst["GFLOPs"]]

        ax = plt.gca()
        print(history[i])
        xticks, labels = plt.gca().get_xticks(), plt.gca().get_xticklabels()

        # Create a dictionary that maps each label to its corresponding xtick location
        label_to_xtick = {label.get_text(): xtick for xtick, label in zip(xticks, labels)}
        print(label_to_xtick)
        x1, y1 = label_to_xtick[src["label"]], src["GFLOPs"]
        x2, y2 = label_to_xtick[dst["label"]], dst["GFLOPs"]

        if src_color == "red":
            continue
            # Draw curved arrow from red source
            arrow = FancyArrowPatch(
                (x1, y1), (x2, y2),
                arrowstyle="->",
                connectionstyle="arc3,rad=0.2",
                color="black",
                linewidth=2,
            )
            ax.add_patch(arrow)
        elif dst_color != "red":
            # Draw curved line
            linestyle = "--" if dst_color == "red" else "-"
            color = "red" if dst_color == "red" else "gray"
            line = FancyArrowPatch(
                (x1, y1 - 250), (x2 + 0.5, y2),
                connectionstyle="arc3,rad=0.2",
                color=color,
                linestyle="--",
                arrowstyle="->",
                mutation_scale=30,  #
            )
            ax.add_patch(line)
        else:
            arrow = FancyArrowPatch(
                (x1, y1), (x2, y2 + 250),
                arrowstyle="->",
                mutation_scale=30,  # Increase this for a bigger head
                connectionstyle="arc3,rad=0.2",
                color="red",
                linestyle="--",
            )
            ax.add_patch(arrow)
            arrow = FancyArrowPatch(
                (x2, y2 + 250), (x1 , y1),
                arrowstyle="->",
                mutation_scale=30,  # Increase this for a bigger head
                connectionstyle="arc3,rad=-0.15",
                color="red",
                linestyle="--",
            )
            ax.add_patch(arrow)
        xm = (x1 + x2 + 1) / 2
        ym = (y1 + y2) / 2

        # Adjust vertical position based on index `i`
        if dst_color == "red":
            text_y = ym + 1500  # place above
            va = "bottom"
        else:
            text_y = ym - 1000  # place below
            va = "top"

        ax.text(
            xm,
            text_y,
            f"{i}",  # or any custom label
            ha="center",
            va=va,
            fontsize=14,
            color="red" if dst_color == "red" else "black",
            #bbox=dict(boxstyle="round,pad=0.2", facecolor="white", alpha=0.8)
        )
    for i in range(5, 7):
        src = history[i]
        dst = history[i + 1]
        src_color = color_history[i]
        dst_color = color_history[i + 1]

        x_values = [src["label"], dst["label"]]
        y_values = [src["GFLOPs"], dst["GFLOPs"]]

        ax = plt.gca()
        print(history[i])
        xticks, labels = plt.gca().get_xticks(), plt.gca().get_xticklabels()

        # Create a dictionary that maps each label to its corresponding xtick location
        label_to_xtick = {label.get_text(): xtick for xtick, label in zip(xticks, labels)}
        print(label_to_xtick)
        x1, y1 = label_to_xtick[src["label"]], src["GFLOPs"]
        x2, y2 = label_to_xtick[dst["label"]], dst["GFLOPs"]

        xm = (x1 + x2 - 1) / 2
        ym = (y1 + y2) / 2
        # Adjust vertical position based on index `i`
        if dst_color == "red":
            text_y = ym - 1200  # place above
            xm = (x1 + x2 + 1) / 2
            va = "bottom"
        else:
            text_y = ym + 1000  # place below
            va = "top"

        ax.text(
            xm,
            text_y,
            f"{i-1}",  # or any custom label
            ha="center",
            va=va,
            fontsize=14,
            color="red" if dst_color == "red" else "black",
            #bbox=dict(boxstyle="round,pad=0.2", facecolor="white", alpha=0.8)
        )
    # Add the text annotation near the special node point
    plt.text(
        special_nodes["label"],
        special_nodes["GFLOPs"] + 2000,
        speedup_text,
        fontsize=12,
        ha="left",  # Horizontal alignment
        va="bottom",  # Vertical alignment
        #color=snc  # Optional: match the color of the special node

        bbox=dict(boxstyle="round,pad=0.2", facecolor="white", edgecolor="none", alpha=0.8)
    )
    history = []
    color_history = []

    #print(dev, title, max_row["GFLOPs"] / cublas_avg["GFLOPs"])

    # Line for cuBLAS average
    # plt.axhline(y=cublas_avg['percentagePeak'], color='green', linestyle='-', label='cuBLAS (Average)')
    # plt.axvline(x=cublas_avg['GFLOPs'], color='green', linestyle='-')

    # Add labels and title
    plt.xlabel("C = A @ B; M,N,K=16384")
    plt.ylabel("GFLOPs/s")
    plt.title(f"Exploring the Optimization Search Space\nWith Guided-Search to Improve Data Locality")
    # plt.xticks(ticks=range(len(df['label'])), labels=[])
    if not force_tick:
        plt.xticks(ticks=[])
    plt.ylim(0, ylim)

    # Add a legend
    plt.xticks(rotation=90, ha="right")
    ax = plt.gca()
    handles, labels = ax.get_legend_handles_labels()
    import matplotlib.patches as mpatches
    import matplotlib.lines as mlines
    extra = [
        mlines.Line2D([], [], color='gray', marker='o', linestyle='None', markersize=10, label='green'),
        mlines.Line2D([], [], color='green', marker='o', linestyle='None', markersize=10, label='green'),
        mlines.Line2D([], [], color='blue', marker='o', linestyle='None', markersize=10, label='blue'),
        mlines.Line2D([], [], color='red', marker='o', linestyle='None', markersize=10, label='red'),
    ]
    extra_labels=[
        'Possible Configuration', 'Initial Configuration', 'Evaluated Configuration', 'Rejected Configuration'
    ]
    ax.legend(handles + extra, labels + extra_labels,
                      loc="upper center",
        bbox_to_anchor=(0.5, -0.08 if not force_tick else -0.45),
        ncol=2,
        frameon=True,)

    plt.grid(visible="both", which="both", linestyle="--", alpha=0.7)
    plt.tight_layout()
    # Display the plot
    plt.savefig(f"{title}_{dev}.png")
    plt.savefig(f"{title}_{dev}.pdf")

    df = pd.DataFrame(df)

    # Get the top 20 rows with the highest GFLOPs
    top_gflops = df.nlargest(20, "GFLOPs")



def square_likeness(tM, tY, tN, tX, bK):
    r1 = bK / (tM * tY)
    r2 = (tN * tX) / bK
    r3 = (tM * tY) / (tN * tX)
    square_like_metric_1 = abs(r1 - 1)
    square_like_metric_2 = abs(r2 - 1)
    square_like_metric_3 = abs(r3 - 1)
    return (square_like_metric_1 + square_like_metric_2 + square_like_metric_3) ** 1 / 3


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


def search(df, initial_guess, title, label, color, ylim, current_row, id=0, prev_tests=0, checked_rows=set()):
    cur_tY, cur_tX, cur_bK, cur_tM, cur_tN = initial_guess

    # Increasing memory access in Y is bad unless the access shape is more square-like (for this problem)
    # Increasing memory access in X is good
    print(current_row)
    if len(current_row) > 1:
        max_index =  current_row['GFLOPs'].idxmax()
        current_row = current_row.loc[[max_index]].head(1)
        #current_row = current_row.head(1)
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
    """
    print("CLOSE ONES:", close_ones)
    create_scatter_plot(
        df=df,
        title=title + " Close",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=close_ones,
        special_label="Close Ones" + str(id),
        current_node=current_row,
    )
    """

    # Filter for increasing loads in the contiguous dimension: bK > cur_bK and tN > cur_tN
    filtered_df1 = df[(df["bK"] >= cur_bK) & (df["tN"] >= cur_tN)]
    print("F1", filtered_df1)
    """
    create_scatter_plot(
        df=df,
        title=title + " Contig.",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df1,
        special_label="Longer contiguous access" + str(id),
        current_node=current_row,
    )
    """

    def cache_fit(val):
        return np.logical_or(val % 32 == 0, np.logical_and(val < 32, 32 % val == 0))

    # Apply cache_fit function directly using numpy
    filtered_df0 = df[cache_fit(df["bK"]) & cache_fit(df["tN"] * df["tX"])]
    print("F0", filtered_df0)
    """
    create_scatter_plot(
        df=df,
        title=title + " Mult. Cache." + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df0,
        special_label="Multiple of 128 bytes",
        current_node=current_row,
    )
    """

    filtered_df2 = df[
        (df["tX"] >= cur_tX)
        & (df["tY"] >= cur_tY)
        & (df["tY"] * df["tX"] > cur_tY * cur_tX)
    ]
    print("F2", filtered_df2)
    """
    create_scatter_plot(
        df=df,
        title=title + " More Thread"  + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df2,
        special_label="More Threads in Both Dims.",
        current_node=current_row,
    )
    """

    sl = square_likeness(cur_tM, cur_tY, cur_tN, cur_tX, cur_bK)

    filtered_df3 = df[
        (square_likeness(df["tM"], df["tY"], df["tN"], df["tX"], df["bK"]) <= sl)
    ]
    print("F3", filtered_df3)
    """
    create_scatter_plot(
        df=df,
        title=title + " Square",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df3,
        special_label="Tile Size Closer To Square",
        current_node=current_row,
    )
    """

    # Cache-fit & (Longer-access \ More square)
    filtered_df4 = df[((df["bK"] >= cur_bK) & (df["tN"] >= cur_tN) | (square_likeness(df["tM"], df["tY"], df["tN"], df["tX"], df["bK"]) <= sl))
                      & cache_fit(df["bK"]) & cache_fit(df["tN"] * df["tX"])]
    print("F4", filtered_df4)
    """
    create_scatter_plot(
        df=df,
        title=title + "(Tile Size Closer To Square or Longer Contigous Access) + Multiple of Cache Line Size" + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df4,
        special_label="(Tile Size Closer To Square or Longer Contigous Access) + Multiple of Cache Line Size",
        current_node=current_row,
    )
    """

    filtered_df5 = close_ones[(((df["bK"] >= cur_bK) & (df["tN"] >= cur_tN)) | (square_likeness(df["tM"], df["tY"], df["tN"], df["tX"], df["bK"]) <= sl))
                      & cache_fit(df["bK"]) & cache_fit(df["tN"] * df["tX"])]
    print("F5", filtered_df5)
    create_scatter_plot(
        df=df,
        title=title + "Tile Size Closer To Square or Longer Contigous Access + Geq. Threads" + str(id),
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df5,
        special_label="Tile Size Closer To Square or Longer Contigous Access + \n  Geq. Threads, Num Prev Tests: " + str(prev_tests),
        current_node=current_row,
    )
    filtered_df6 = filtered_df5.sort_values(by="GFLOPs", ascending=False)
    print(filtered_df6)
    next_cur_row = filtered_df6[["tY", "tX", "bK", "tM", "tN"]].values
    next_cur_row_perf = tuple(filtered_df6[["GFLOPs"]].values[0])[0]
    #raise Exception(tuple(next_cur_row[0]), len(filtered_df5))
    a_eq =  all([a == b for a, b in zip(tuple(next_cur_row[0]), cur_row)])
    num_tests = len(filtered_df6[~filtered_df6.isin(checked_rows)])
    checked_rows = pd.concat([checked_rows, filtered_df6]).drop_duplicates().reset_index(drop=True)

    if next_cur_row_perf <= current_row["GFLOPs"].iloc[0] or a_eq:
        return None, len(filtered_df6), checked_rows


    return tuple(next_cur_row[0]) if tuple(next_cur_row[0]) != initial_guess else None, num_tests, checked_rows


def _greedy_search_row(filtered_df3):
    rows = []
    prev_row = None
    prev_percentage_peak = None
    i = 0

    # Iterate over rows to check when percentagePeak stops increasing
    for index, row in filtered_df3.iterrows():
        current_percentage_peak = row["percentagePeak"]

        # If prev_percentage_peak is not None and the current value is less than or equal to the previous, stop
        if prev_percentage_peak is not None and current_percentage_peak <= prev_percentage_peak:
            rows.append(row)
            return prev_row, i + 1, rows
            break

        # Update previous row and percentagePeak
        rows.append(row)
        prev_row = row
        prev_percentage_peak = current_percentage_peak
        i += 1
    return prev_row, i, rows


history = list()
color_history = list()
def search2(df, initial_guess, title, label, color, ylim, current_row, num_tests=0):
    global history
    global color_history
    checked_rows = []
    cur_tY, cur_tX, cur_bK, cur_tM, cur_tN = initial_guess
    #print("Fdf", df)
    filtered_df1 = df[
        (df["tX"] == cur_tX)
        & (df["tY"] == cur_tY)
        & (df["bK"] == cur_bK)
        & (df["tM"] == cur_tM)
        & (df["tN"] == cur_tN)
    ]
    history.append(filtered_df1.iloc[0])
    color_history.append("green")
    #print("F1", filtered_df1)

    """
    create_scatter_plot(
        df=df,
        title=title + f" NumThreads {cur_tX}x{cur_tY}",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df1,
        special_label=f"NumThreads {cur_tX}x{cur_tY}",
        current_node=current_row,
        force_tick=True,
    )

    """
    filtered_df2 = df[
        (df["tX"] == cur_tX)
        & (df["tY"] == cur_tY)
        & (df["bK"] == cur_bK)
        & (df["tM"] >= cur_tM)
        & (df["tN"] >= cur_tN)
    ]
    filtered_df2 = filtered_df2[filtered_df2["tM"] >= filtered_df2["tN"]]
    filtered_df2["product"] = filtered_df2["tM"] * filtered_df2["tN"]

    # Sort by the product column
    filtered_df2 = filtered_df2.sort_values(by="product", ascending=True)

    """
    create_scatter_plot(
        df=filtered_df2,
        title=title + f" Increase Thread Coarsening ({cur_tX}x{cur_tY})",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df2,
        special_label=f" Increase Thread Coarsening ({cur_tX}x{cur_tY})",
        current_node=current_row,
        force_tick=True,
    )

    """
    checked_rows = pd.Series()
    next_cur_row, _nt, rows = _greedy_search_row(filtered_df3=filtered_df2)
    history += rows
    color_history += ["blue" for v in rows[:-1]] + ["red"]
    i = 0
    checked_rows = pd.concat([checked_rows, *rows]).drop_duplicates().reset_index(drop=True)

    for r in rows:
        create_scatter_plot(
            df=df,
            title=title.replace("Cto", "") + f"Greedy Search Increase (TM, TN) Try: {i}",
            label=label,
            color=color,
            ylim=ylim,
            special_nodes=r,
            special_label=f"Greedy Search Increase (TM, TN) Try: {i}",
            current_node=None,
            force_tick=False,
        )
        i += 1

    num_tests += _nt - 1
    next_cur_row = next_cur_row[["tY", "tX", "bK", "tM", "tN"]].values
    #print(next_cur_row)
    __tY, __tX, __bK, __tM, __tN = next_cur_row
    cur_tM = __tM
    cur_tN = __tN
    filtered_df3 = df[
        (df["tX"] == cur_tX)
        & (df["tY"] == cur_tY)
        & (df["bK"] >= cur_bK)
        & (df["tM"] == cur_tM)
        & (df["tN"] == cur_tN)
    ]
    filtered_df3 = filtered_df3.sort_values(by="bK", ascending=True)
    next_cur_row, _nt, rows  = _greedy_search_row(filtered_df3=filtered_df3)
    checked_rows = pd.concat([checked_rows, *rows]).drop_duplicates().reset_index(drop=True)
    print(rows)
    history += rows
    color_history += ["blue" for v in rows[:-1]] + ["red"]

    for r in rows:
        create_scatter_plot(
            df=df,
            title=title.replace("Cto", "") + f"Greedy Search Increase (BK) Try: {i}",
            label=label,
            color=color,
            ylim=ylim,
            special_nodes=r,
            special_label=f"Greedy Search Increase (BK) Try: {i}",
            current_node=None,
            force_tick=False,
        )
        i += 1
    num_tests += _nt - 1
    #print("F3", filtered_df3)

    """
    create_scatter_plot(
        df=filtered_df3,
        title=title.replace("Cto", "") + f" Increase ShrMem Usage ({cur_tX}x{cur_tY}), ({cur_tM}x{cur_tN})",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=filtered_df3,
        special_label=f" Increase ShrMem Usage ({cur_tX}x{cur_tY}), ({cur_tM}x{cur_tN})",
        current_node=current_row,
        force_tick=True,
    )

    """
    #raise Exception(history)

    create_scatter_plot_with_history(
        df=df,
        title=title.replace("Cto", "") + f"History",
        label=label,
        color=color,
        ylim=ylim,
        special_nodes=r,
        special_label=f"Greedy Search Increase (BK) Try: {i}",
        current_node=None,
        force_tick=False,
        history=history,
        color_history=color_history
    )

    return next_cur_row, num_tests, checked_rows


for dev, ylim in devs:
    #print(dev)
    df = pd.read_csv(f"output_{dev}.csv")
    filtered_df = df[df['Identifier'] == 'Inner Product + No Remainder']

    # Print the filtered DataFrame
    print(filtered_df)

    # Raise an exception (with the length of 'dev' and its value)


    # Filter out rows where 'time' is -1.0
    filtered_df = df[df["time"] != -1.0]

    # Create a new 'label' column by concatenating tY, tX, bK, tM, tN with commas
    filtered_df["label"] = (
        filtered_df[["tY", "tX", "bK", "tM", "tN"]].astype(str).agg(",".join, axis=1)
    )
    current_label = ",".join(map(str, (16, 16, 32, 4, 4)))

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

    #print(outer_product_df)
    current_row = outer_product_df[outer_product_df["label"] == current_label]
    #print(current_row)

    filtered_df0 = inner_product_no_rem_df[
        (
            (inner_product_no_rem_df["tX"] * inner_product_no_rem_df["tY"] >= 256)
            & (inner_product_no_rem_df["tX"] * inner_product_no_rem_df["tY"] <= 512)
        )
        & (inner_product_no_rem_df["bK"] == 8)
        & (inner_product_no_rem_df["tM"] == 2)
        & (inner_product_no_rem_df["tN"] == 2)
    ]

    for _df, _name in [(inner_product_no_rem_df, f"{dev}_Inner-Product")]: #outer_product_df, inner_product_rem_df
        filtered_df0 = _df[
            (
                (_df["tX"] * _df["tY"] >= 256)
                & (_df["tX"] * _df["tY"] <= 512)
            )
            & (_df["bK"] == 8)
            & (_df["tM"] == 2)
            & (_df["tN"] == 2)
        ]
        #print("F00", filtered_df0)
        top_values = filtered_df0.copy().sort_values(by="percentagePeak", ascending=False).head(2)
        rr, _pre_tests, rows = _greedy_search_row(filtered_df3=filtered_df0)
        #raise Exception(rr, i)
        #num_tests = len(filtered_df0.copy().sort_values(by="percentagePeak", ascending=False))
        print("RR", rr)
        top_values = result = rr[["tY", "tX", "bK", "tM", "tN"]].values
        tp1 = tuple(top_values)
        #raise Exception(tp1)
        #tp2 = top_values[1]
        #print(tp1, tp2)
        found_row, total_tests, checked_rows = search2(
            _df,
            tp1,
            _name,
            _name,
            "blue",
            ylim,
            None,
            _pre_tests
        )
        num_tests = total_tests
        create_scatter_plot(_df, _name, _name, "blue", ylim, special_nodes=found_row, special_label=f"Greedy ({total_tests})")
        #raise Exception(found_row, total_tests)
        print(_name, ": ", found_row, total_tests)

        #current_label = ",".join(map(str, (1, 32, 8, 2, 2)))
        #current_row = _df[_df["label"] == current_label]
        current_row = found_row
        cur_row = current_row[["tY", "tX", "bK", "tM", "tN"]].values
        current_label = current_row["label"]
        #print("A", current_row, "B", cur_row)
        for i in range(10):
            nrow, num_tests, checked_rows = search(
                _df,
                tuple(cur_row),
                _name,
                _name,
                "blue",
                ylim,
                _df[_df["label"] == current_label],
                id=i,
                prev_tests=total_tests,
                checked_rows = checked_rows
            )
            if nrow is None:
                total_tests += num_tests
                cur_row = cur_row
                current_label = ",".join(map(str, cur_row))
                break
            cur_row = nrow
            total_tests += num_tests
            current_label = ",".join(map(str, cur_row))
        print(_name, ":", cur_row, total_tests)


        """
        search2(
            _df,
            tp2,
            _name,
            _name,
            "blue",
            ylim,
            None,
        )
        """
        current_row = _df[_df["label"] == ",".join(map(str, cur_row))]
        current_row = current_row.loc[current_row["GFLOPs"].idxmax()]
        #if len(current_row) > 1:
        #    raise Exception(current_row)
        create_scatter_plot(_df, _name, _name, "blue", ylim, special_nodes=current_row, special_label=f"Guided + Neighborhood Search ({total_tests})", current_node=None)

    """
    search(
        outer_product_df,
        (16, 16, 16, 1, 1),
        "Outer-Product",
        "Outer-Product",
        "blue",
        ylim,
        None,
    )
    search2(
        outer_product_df,
        (16, 16, 16, 1, 1),
        "Outer-Product",
        "Outer-Product",
        "blue",
        ylim,
        None,
    )
    """
    """
    search(
        inner_product_no_rem_df,
        (16, 16, 16, 1, 1),
        "Inner Product + Compile-Time Dimensions",
        "Inner Product + Compile-Time Dimensions",
        "orange",
        ylim,
        None,
    )
    search2(
        inner_product_no_rem_df,
        (16, 16, 16, 1, 1),
        "Inner Product + Compile-Time Dimensions",
        "Inner Product + Compile-Time Dimensions",
        "orange",
        ylim,
        None,
    )
    """
    # Create scatter plots for each identifier
    # create_scatter_plot(outer_product_df, "Outer-Product", "Outer-Product", "blue", ylim)
    # create_scatter_plot(inner_product_no_rem_df, "Inner Product + Compile-Time Dimensions", "Inner Product + Compile-Time Dimensions", "orange", ylim)
    # create_scatter_plot(inner_product_rem_df, "Inner Product", "Inner Product", "red", ylim)

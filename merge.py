import os
import pandas as pd

def merge_csvs(directory, output_file):
    # Initialize a list to store all dataframes
    dfs = []

    # Iterate over all files in the directory
    for filename in os.listdir(directory):
        # Check if the file is a CSV file
        if filename.endswith('.csv'):
            # Construct the full filepath by joining the directory and filename
            filepath = os.path.join(directory, filename)
            
            # Load the CSV file into a dataframe
            df = pd.read_csv(filepath)
            
            # Add a new column to the dataframe with the filename (without extension)
            df['file_label'] = os.path.splitext(filename)[0]
            
            # Add the dataframe to the list of dataframes
            dfs.append(df)

    # Concatenate all dataframes in the list
    merged_df = pd.concat(dfs, ignore_index=True)

    # Write the merged dataframe to a new CSV file
    merged_df.to_csv(output_file, index=False)

# Use the function
merge_csvs('/lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/', '/lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/flag_output.csv')


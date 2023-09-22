import re
import os
import csv
import argparse

def extract_stats(flagstat_output):
    stats = {}
    
    # Total reads
    total_reads = re.search(r'(\d+) \+ \d+ in total', flagstat_output)
    if total_reads:
        stats['total'] = int(total_reads.group(1))
    
    # Mapped reads
    mapped_reads = re.search(r'(\d+) \+ \d+ mapped', flagstat_output)
    if mapped_reads:
        stats['mapped'] = int(mapped_reads.group(1))
    
    # Both unmapped reads
    both_unmapped = stats.get('total', 0) - stats.get('mapped', 0)
    stats['both_unmapped'] = both_unmapped if both_unmapped >= 0 else 0
    
    # Only one mapped reads
    only_one_mapped = re.search(r'(\d+) \+ \d+ singletons', flagstat_output)
    if only_one_mapped:
        stats['only_one_mapped'] = int(only_one_mapped.group(1))
    
    # One mapped, one mismapped reads
    one_mapped_one_mismapped = re.search(r'(\d+) \+ \d+ with mate mapped to a different chr \(mapQ>=5\)', flagstat_output)
    if one_mapped_one_mismapped:
        stats['one_mapped_one_mismapped'] = int(one_mapped_one_mismapped.group(1))
    
    # One mapped, one unmapped reads
    one_mapped_one_unmapped = stats.get('only_one_mapped', 0) - stats.get('one_mapped_one_mismapped', 0)
    stats['one_mapped_one_unmapped'] = one_mapped_one_unmapped if one_mapped_one_unmapped >= 0 else 0
    
    # Both properly mapped reads
    both_properly_mapped = re.search(r'(\d+) \+ \d+ properly paired', flagstat_output)
    if both_properly_mapped:
        stats['both_properly_mapped'] = int(both_properly_mapped.group(1))
    
    return stats

def main(directory, output_file):
    # Specify the column names
    column_names = ['filename', 'total', 'mapped', 'both_unmapped', 'only_one_mapped', 'one_mapped_one_mismapped', 'one_mapped_one_unmapped', 'both_properly_mapped']

    # Open the output file
    with open(output_file, 'w', newline='') as ofile:
        # Create a csv writer
        writer = csv.writer(ofile)

        # Write the column names
        writer.writerow(column_names)
        
        # Loop through all the files in the directory
        for filename in os.listdir(directory):
            # Check if the file is a flagstat_output file
            if filename.endswith('.txt'):  # or whatever the file extension of your flagstat_output files
                # Open the flagstat_output file
                with open(os.path.join(directory, filename), 'r') as ifile:
                    # Read the contents of the file
                    flagstat_output = ifile.read()

                    # Extract the stats from the flagstat_output
                    stats = extract_stats(flagstat_output)

                    # Write the stats to the output file as a row
                    row = [filename] + [stats.get(col, 'N/A') for col in column_names[1:]]
                    writer.writerow(row)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Extract stats from flagstat_output files and write them to a CSV file.")
    parser.add_argument("directory", help="The directory where the flagstat_output files are located.")
    parser.add_argument("output_file", help="The output file where the results should be written to.")

    args = parser.parse_args()
    
    main(args.directory, args.output_file)


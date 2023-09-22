import argparse
import os
import pysam
from collections import defaultdict

def mismatch_distribution(bamfile, outfile):
    samfile = pysam.AlignmentFile(bamfile, "rb")
    dist_dict = defaultdict(int)
    total = 0
    mapped_reads = 0

    for read in samfile:
        if not read.is_unmapped:
            mapped_reads += 1
            tags = dict(read.tags)
            if 'XM' in tags:
                dist_dict[tags['XM']] += 1
                total += 1

    samfile.close()

    # Group mismatches
    distribution = {
        '1': 0,
        '2': 0,
        '3-4': 0,
        '5-6': 0,
        '7-9': 0,
        '>9': 0
    }

    for key, value in dist_dict.items():
        if key == 1:
            distribution['1'] += value
        elif key == 2:
            distribution['2'] += value
        elif 3 <= key <= 4:
            distribution['3-4'] += value
        elif 5 <= key <= 6:
            distribution['5-6'] += value
        elif 7 <= key <= 9:
            distribution['7-9'] += value
        elif key > 9:  # Modify condition for >9 category
            distribution['>9'] += value

    # Calculate percentage and save to file
    out_dir = os.path.dirname(outfile)
    os.makedirs(out_dir, exist_ok=True)  # Create the output directory if it doesn't exist

    with open(outfile, 'w') as f:
        f.write('Mismatch Group,Count,Percentage\n')
        for key, value in distribution.items():
            percentage = (value / mapped_reads) * 100
            f.write(f'{key},{value},{percentage}\n')

def main():
    parser = argparse.ArgumentParser(description='Calculate mismatch distribution from BAM file.')
    parser.add_argument('-b', '--bam', required=True, help='Input BAM file.')
    parser.add_argument('-o', '--out', required=True, help='Output file.')
    args = parser.parse_args()

    mismatch_distribution(args.bam, args.out)

if __name__ == "__main__":
    main()


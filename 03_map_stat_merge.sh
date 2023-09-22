#!/bin/bash
#SBATCH -J merge
#SBATCH -p cpu
#SBATCH --output=merge_stats.out
#SBATCH --error=merge_stats.err
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mail-type=end,fail
#SBATCH --mail-user=hahahehe@sjtu.edu.cn
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/merge.py

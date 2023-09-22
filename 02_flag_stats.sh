#!/bin/bash
#SBATCH -J flat_stats
#SBATCH -p cpu
#SBATCH --output=flat_stats.out
#SBATCH --error=flat_stats.err
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mail-type=end,fail
#SBATCH --mail-user=hahahehe@sjtu.edu.cn

python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_bbduk/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_01_hisat2_bbduk.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_fastp/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_01_hisat2_fastp.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_trim/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_01_hisat2_trim.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_02_bowtie2_bbduk.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_fastp/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_02_bowtie2_fastp.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_trim/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_02_bowtie2_trim.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_03_bbmap_bbduk/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_03_bbmap_bbduk.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_03_bbmap_fastp/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_03_bbmap_fastp.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flag_stat.py /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_03_bbmap_trim/map_stat/  /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/flat_stats/04_03_bbmap_trim.csv

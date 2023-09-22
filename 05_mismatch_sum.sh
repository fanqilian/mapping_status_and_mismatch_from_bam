#!/bin/bash
#SBATCH -J ms_stats
#SBATCH -p cpu
#SBATCH --output=ms_stats.out
#SBATCH --error=ms_stats.err
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mail-type=end,fail
#SBATCH --mail-user=hahahehe@sjtu.edu.cn

python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_bbduk/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_01_hisat2_bbduk.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_fastp/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_01_hisat2_fastp.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_trim/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_01_hisat2_trim.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_02_bowtie2_bbduk.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_fastp/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_02_bowtie2_fastp.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_trim/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_02_bowtie2_trim.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_03_bbmap_bbduk/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_03_bbmap_bbduk.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_03_bbmap_fastp/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_03_bbmap_fastp.csv
python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/ms_stst.py --input_dir /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_03_bbmap_trim/mismatch/ --output_file /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/mismatch_stats/04_03_bbmap_trim.csv

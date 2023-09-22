#!/bin/bash
#SBATCH -J 04_01_hisat2_fastp
#SBATCH -p cpu
#SBATCH --output=04_01_hisat2_fastp.out
#SBATCH --error=04_01_hisat2_fastp.err
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mail-type=end,fail
#SBATCH --mail-user=hahahehe@sjtu.edu.cn

# 设置输入目录和输出目录
input_dir="/lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_01_hisat2_fastp/"
output_dir="${input_dir}/mismatch"

# 创建输出目录
mkdir -p "${output_dir}"

# 循环处理所有的 sort.bam 文件
for bamfile in ${input_dir}/*.sorted.bam; do
    # 提取文件名
    filename=$(basename "${bamfile}")
    # 构造输出文件路径
    output_file="${output_dir}/${filename%.*}_mismatch.txt"
    # 运行 python 并将结果保存到输出文件
    python /lustre/home/acct-ioozy/ioozy-user3/FQL/SMTD/B_reference_based/mapping/04_02_bowtie2_bbduk/map_stat_test/ms_sh/mismatch.py -b "${bamfile}" -o "${output_file}"
done

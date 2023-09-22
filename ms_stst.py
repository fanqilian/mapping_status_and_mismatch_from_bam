import os
import argparse
import pandas as pd

def process_files(input_directory, output_file):
    # 初始化一个空的dataframe用于存储最终结果
    final_df = pd.DataFrame()

    # 遍历目录下的所有文件
    for filename in os.listdir(input_directory):
        if filename.endswith('.txt'):  # 只处理txt文件
            # 构造完整的文件路径
            file_path = os.path.join(input_directory, filename)
            
            # 读取txt文件到dataframe
            df = pd.read_csv(file_path)
            
            # 将'Mismatch Group'列设置为索引并转置dataframe
            df.set_index('Mismatch Group', inplace=True)
            df = df.transpose()
            
            # 只保留'Percentage'行
            df = df[df.index == 'Percentage']
            
            # 加入文件名列和目录名列
            df['filename'] = filename
            df['directory'] = input_directory
            
            # 添加到最终的dataframe中
            final_df = pd.concat([final_df, df], ignore_index=True)

    # 保存结果到新的csv文件
    final_df.to_csv(output_file, index=False)

def main():
    parser = argparse.ArgumentParser(description="Process txt files.")
    parser.add_argument("--input_dir", type=str, required=True,
                        help="Input directory containing txt files")
    parser.add_argument("--output_file", type=str, required=True,
                        help="Output file path")

    args = parser.parse_args()
    process_files(args.input_dir, args.output_file)

if __name__ == "__main__":
    main()


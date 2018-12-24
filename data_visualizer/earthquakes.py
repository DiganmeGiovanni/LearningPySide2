import argparse
import pandas as pd


def read_data(f_name):
    return pd.read_csv(f_name)


if __name__ == "__main__":
    options = argparse.ArgumentParser()
    options.add_argument("-f", "--file", type=str, required=True)
    args = options.parse_args()

    data = read_data(args.file)
    print(data)

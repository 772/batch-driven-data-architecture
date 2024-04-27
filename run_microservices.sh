#!/bin/bash
file="./0_place_dataset_csv_here/dataset.csv"
if [ ! -e "$file" ]; then
    echo "Error: dataset.csv not found. Please download it from https://www.kaggle.com/datasets/andrewmvd/steam-reviews and unzip it in '1_place_dataset_csv_here'."
    exit
fi

# 1_process_dataset
chmod +x 1_process_dataset/script.py
docker build -t step-1 1_process_dataset
docker run -v "$(pwd)":/app step-1

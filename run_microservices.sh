#!/bin/bash
file="./0_place_dataset_csv_here/dataset.csv"
if [ ! -e "$file" ]; then
    echo "Error: dataset.csv not found. Please download it from https://www.kaggle.com/datasets/andrewmvd/steam-reviews and unzip it in '0_place_dataset_csv_here'."
    exit
fi
if [ $(wc -l < 0_place_dataset_csv_here/dataset.csv) -ne 6417107 ]; then
    echo "Warning: You are using the small example dataset.csv and not the original dataset.csv. Please download it from https://www.kaggle.com/datasets/andrewmvd/steam-reviews and unzip it in '0_place_dataset_csv_here'."
fi

# 1_process_dataset
chmod +x 1_process_dataset/script.py
docker build -t step-1 1_process_dataset
docker run -v "$(pwd)":/app step-1

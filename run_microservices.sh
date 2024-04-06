#!/bin/bash
file="./0_place_dataset_csv_here/dataset.csv"
if [ ! -e "$file" ]; then
    echo "Error: dataset.csv not found. Please download it from https://www.kaggle.com/datasets/andrewmvd/steam-reviews and unzip it in '0_place_dataset_csv_here'."
    exit
fi
echo "Continue..."

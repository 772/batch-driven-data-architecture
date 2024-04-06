#!/bin/bash
file=./1_place_dataset_csv_here/dataset.csv
if [ ! -e "$file" ]; then
    echo "Error: dataset.csv not found. Please download it from Kaggle and unzip it in '1_place_dataset_csv_here'."
else 
    echo "Found dataset.csv."
    exit
fi

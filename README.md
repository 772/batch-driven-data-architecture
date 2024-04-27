# batch-driven-data-architecture

This program processes a large CSV file with 6.4 million data records at regular intervals. The aim of the program is to prepare the data for training a neural network.

## Run

```
git clone https://github.com/772/batch-driven-data-architecture
```
Download the dataset (https://www.kaggle.com/datasets/andrewmvd/steam-reviews) and unzip the CSV file to the folder *0_place_dataset_csv_here*.
```
cd batch-driven-data-architecture
./run_microservices.sh
```

## Cronjob running the script every third month

```
0 0 1 */3 * /path/to/run_microservices.sh
```

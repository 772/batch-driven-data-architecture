import pandas as pd

# Pfade.
file_path_input = "0_place_dataset_csv_here/dataset.csv"
file_path_output = "1_process_dataset/dataset.csv"
print("1_prozess_dataset: Read", file_path_input)

# DataFrame aus der CSV-Datei erstellen.
df = pd.read_csv(file_path_input)

# Nur die dritte Spalte behalten.
df = df.iloc[:, [2]]

# DataFrame zurück in die CSV-Datei schreiben.
print("1_prozess_dataset: Write", file_path_output)
df.to_csv(file_path_output, index=False)

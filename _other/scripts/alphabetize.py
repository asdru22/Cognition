import json
import os

# Input and output filenames
input_file = "resourcepack/assets/cgn/lang/eng.json"
output_file = "resourcepack/assets/cgn/lang/en_us.json"

# Check if the input file exists
if not os.path.exists(input_file):
    print(f"Error: {input_file} not found in the current directory.")
else:
    # Read the JSON file
    with open(input_file, "r", encoding="utf-8") as file:
        data = json.load(file)

    # Sort the dictionary by keys
    sorted_data = dict(sorted(data.items()))

    # Optionally write the sorted data back to a new file
    with open(output_file, "w", encoding="utf-8") as file:
        json.dump(sorted_data, file, indent=2, ensure_ascii=False)

    # Print the sorted data
    print(f"Sorted data saved to {output_file}:")
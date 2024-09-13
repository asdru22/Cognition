import os
import json

def format_json_files(folder_path):
    # Iterate over all files in the folder
    for filename in os.listdir(folder_path):
        # Check if the file is a JSON file
        if filename.endswith('.json'):
            file_path = os.path.join(folder_path, filename)
            
            # Open and read the JSON file
            with open(file_path, 'r', encoding='utf-8') as json_file:
                try:
                    data = json.load(json_file)
                except json.JSONDecodeError:
                    print(f"Error decoding {filename}")
                    continue
            
            # Write the JSON back with indentation of 2 spaces
            with open(file_path, 'w', encoding='utf-8') as json_file:
                json.dump(data, json_file, indent=2, ensure_ascii=False)
                print(f"Formatted {filename}")

# Example usage
folder_path = 'z_other/scripts/items/items'
format_json_files(folder_path)
import os
import json

def is_json_valid(file_path):
    """Check if a file contains valid JSON."""
    try:
        with open(file_path, 'r') as file:
            json.load(file)
        return True
    except json.JSONDecodeError:
        return False
    except Exception as e:
        print(f"Error opening file {file_path}: {e}")
        return False

def find_invalid_json_files(root_folder):
    """Recursively find and print invalid JSON files in the given folder."""
    invalid_files = []

    for dirpath, _, filenames in os.walk(root_folder):
        for filename in filenames:
            if filename.endswith('.json'):
                file_path = os.path.join(dirpath, filename)
                if not is_json_valid(file_path):
                    invalid_files.append(file_path)

    return invalid_files

if __name__ == "__main__":
    folder_to_scan = "C:/Users/Ale/Documents/GitHub/cognition"  # Replace with your folder path
    invalid_files = find_invalid_json_files(folder_to_scan)

    if invalid_files:
        print("Invalid JSON files found:")
        for file in invalid_files:
            print(file)
    else:
        print("All JSON files are valid.")

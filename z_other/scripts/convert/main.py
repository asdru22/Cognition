import os
import json

def get_name(name):
    return {
        "function": "minecraft:set_name",
        "target": "item_name",
        "name": {
            "translate": f"item.cgn.{name}"
        }
    }

def get_lore(): 
    return {
        "function": "minecraft:set_lore",
        "lore": [
            {
                "translate": "pack.cgn",
                "color": "#653AA0",
                "italic": False
            }
        ],
        "mode": "replace_all"
    }

def process_file(name, data,file_path):
    print(name)
    root = data["pools"][0]["functions"]

    # Loop over the list of functions and remove the item_name and lore functions
    root[:] = [func for func in root if not (
        "set_components" in func and
        (
            "minecraft:item_name" in func["set_components"] or
            "minecraft:lore" in func["set_components"]
        )
    )]

    # Add the new functions for name and lore
    root.append(get_name(name))
    root.append(get_lore())
    
    with open(file_path, 'w', encoding='utf-8') as json_file:
      json.dump(data, json_file, indent=2)

def read_json_files(subfolder):
    # Get a list of all files in the subfolder
    for filename in os.listdir(subfolder):
        # Check if the file is a JSON file
        if filename.endswith('.json'):
            file_path = os.path.join(subfolder, filename)
            # Open and read the JSON file
            with open(file_path, 'r', encoding='utf-8') as json_file:
                try:
                    data = json.load(json_file)
                    process_file(os.path.splitext(filename)[0], data,file_path)
                except json.JSONDecodeError:
                    print(f"Error decoding {filename}")

# Define paths
path = 'datapack/data/cgn/loot_table/items'

# Call the function
read_json_files(path)
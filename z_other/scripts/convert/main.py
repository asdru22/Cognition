import os
import json

namespace = "cgn"
footer = {"translate":"pack.cgn","color":"#653AA0","italic":False}

def process_file(name,data):
    print(data)


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
                    process_file(os.path.splitext(filename)[0],data)
                except json.JSONDecodeError:
                    print(f"Error decoding {filename}")

output_path = 'datapack/data/cgn/loot_table/items'
items_path = 'datapack/data/cgn/loot_table/items'
read_json_files(items_path)

name = {
          "function": "minecraft:set_name",
          "target": "item_name",
          "name": {
            "translate": f"item.cgn.{filename}"
          }
        }
lore = {
          "function": "minecraft:set_lore",
          "lore": [
            {
              "translate": "pack.cgn",
              "color": "#653AA0",
              "italic": False
            }
          ],
          "mode": "replace_all"
        },
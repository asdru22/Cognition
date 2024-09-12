import os
import json

namespace = "cgn"
footer = {"translate":"pack.cgn","color":"#653AA0","italic":False}

def get_item_model(id,data):
    if "type" in data: return f"{namespace}:{type}/{id}"
    else: return f"{namespace}:{id}"

def base_loot_table(base_item,id,data):
    return {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":f"minecraft:{base_item}"}],"functions":[{"function":"minecraft:set_components","components":{"minecraft:item_name":json.dumps({"translate":f"item.{namespace}.{id}"}),"minecraft:tooltip_style":f"{namespace}:default","minecraft:lore":[json.dumps(footer)],"minecraft:item_model":get_item_model(id=id,data=data)}}]}]}

def make_loot_table(id,data):
    loot_table = base_loot_table(base_item=data["base_item"],id=id,data=data)
    if("components" in data):
        loot_table["pools"][0]["functions"][0]["components"].update(data["components"])

    with open(os.path.join(output_path,f"{id}.json"),"w") as f:
        f.write(json.dumps(loot_table,indent=2))

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
                    make_loot_table(os.path.splitext(filename)[0],data)
                except json.JSONDecodeError:
                    print(f"Error decoding {filename}")

output_path = '_other\scripts\items'
items_path = '_other\scripts\items\items'
read_json_files(items_path)
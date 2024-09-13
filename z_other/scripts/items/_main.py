import os
import json

namespace = "cgn"

def get_item_model(id,data):
    if "type" in data: return f"{namespace}:{data["type"]}/{id}"
    else: return f"{namespace}:{id}"

def get_name(id):
    return {"function": "minecraft:set_name","target": "item_name","name": {"translate": f"item.{namespace}.{id}"}}

def get_lore(data):
    r = {"function":"minecraft:set_lore","lore":[{"translate":f"pack.{namespace}","color":"#653AA0","italic":False}],"mode":"replace_all"}
    if("lore" in data):
      r["lore"].append("")
      r["lore"].extend(data["lore"])
    return r


def base_loot_table(base_item,id,data):
    return {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":f"minecraft:{base_item}"}],"functions":[{"function":"minecraft:set_components","components":{"minecraft:tooltip_style":f"{namespace}:default","minecraft:item_model":get_item_model(id=id,data=data)}}]}]}

def make_loot_table(id,data,lang):
    loot_table = base_loot_table(base_item=data["base_item"],id=id,data=data)
    if("components" in data):
        loot_table["pools"][0]["functions"][0]["components"].update(data["components"])
    
    if("custom_data" in data):
        loot_table["pools"][0]["functions"][0]["components"]["minecraft:custom_data"]= {namespace:data["custom_data"]}
    
    if(data["base_item"]=='poisonous_potato'):
      loot_table["pools"][0]["functions"][0]["components"]["!minecraft:consumable"] = {}
      loot_table["pools"][0]["functions"][0]["components"]["!minecraft:food"] = {}

    loot_table["pools"][0]["functions"].append(get_name(id))
    loot_table["pools"][0]["functions"].append(get_lore(data))

    category = 'items'
    if("folder" in data): category = data["folder"]

    with open(os.path.join(output_path,category,f"{id}.json"),"w") as f:
        f.write(json.dumps(loot_table,indent=2))

    lang[f"item.cgn.{id}"] = data["translation"]

def read_json_files(subfolder):
  template_lang_file = os.path.join(lang_path, "eng.json")
  template_lang_file = open(template_lang_file, 'r', encoding='utf-8')
  lang  = json.load(template_lang_file)
  # Get a list of all files in the subfolder
  for filename in os.listdir(subfolder):
    # Check if the file is a JSON file
    if filename.endswith('.json'):
      file_path = os.path.join(subfolder, filename)
      # Open and read the JSON file
      with open(file_path, 'r', encoding='utf-8') as json_file:
        try:
          data = json.load(json_file)
          make_loot_table(os.path.splitext(filename)[0],data,lang)
        except json.JSONDecodeError:
          print(f"Error decoding {filename}")
  
  out_lang_file = os.path.join(lang_path, "en_us.json")
  out_lang_file = open(out_lang_file, 'w', encoding='utf-8')
  out_lang_file.write(json.dumps(lang,indent=2))
  out_lang_file.close()

output_path = 'datapack/data/cgn/loot_table'
lang_path = 'resourcepack/assets/cgn/lang'
items_path = 'z_other/scripts/items'

read_json_files(items_path)
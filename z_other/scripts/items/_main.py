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


def count_loot_table(type,id,count):
    return json.dumps({"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":f"cgn:{type}/{id}"}],"functions":[{"function":"minecraft:set_count","count":count}]}]})

def make_recipe(id,data):
  out = "execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{"
  col = 0
  for row in data["recipe"]:
    if not row == []:
      out +=f"{col}:["
      slot = 0
      for item in row:
        if item =="":
          out += "{Slot:"+str(slot)+"b,id:\"minecraft:air\"}"
        elif not ":" in item:
          out += "{Slot:"+str(slot)+"b,id:\"minecraft:"+item+"\"}"
        elif "cgn:" in item:
          out += "{Slot:"+str(slot)+"b,components:{\"minecraft:item_name\":'{\"translate\":\"item.cgn."+item[4:]+"\"}'}}"
        slot +=1
        if not slot == 3: out +=","
      out += "],"
    col += 1
  ## empty list case
  if data["recipe"][1] == [] or data["recipe"][2] == []:
    out +="} "
    if data["recipe"][1] == [] and data["recipe"][2] == []:
      out += "if data storage smithed.crafter:input recipe{1:[],2:[]"
    elif data["recipe"][1] == []:
      out += "if data storage smithed.crafter:input recipe{1:[]"
    elif data["recipe"][2] == []:
      out += "if data storage smithed.crafter:input recipe{2:[]"
  out +="} run "
  
  category = 'items'
  if("folder" in data): category = data["folder"]
  
  out+= "loot replace block ~ ~ ~ container.16 loot "
  if not "count" in data:
    out+=f"cgn:{category}/{id}"
  else:
    out+=count_loot_table(category,id,data["count"])

  return out

def base_loot_table(base_item,id,data):
    return {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":f"minecraft:{base_item}"}],"functions":[{"function":"minecraft:set_components","components":{"minecraft:tooltip_style":f"{namespace}:default","minecraft:item_model":get_item_model(id=id,data=data)}}]}]}

def make_loot_table(id,data,lang,shaped_recipes):
    loot_table = base_loot_table(base_item=data["base_item"],id=id,data=data)
    if("components" in data):
        loot_table["pools"][0]["functions"][0]["components"].update(data["components"])
    
    if("custom_data" in data):
        loot_table["pools"][0]["functions"][0]["components"]["minecraft:custom_data"]= {namespace:data["custom_data"]}
        
    loot_table["pools"][0]["functions"].append(get_name(id))
    loot_table["pools"][0]["functions"].append(get_lore(data))

    category = 'items'
    if("folder" in data): category = data["folder"]

    with open(os.path.join(output_path,category,f"{id}.json"),"w") as f:

      f.write(json.dumps(loot_table,indent=2))

    lang[f"item.cgn.{id}"] = data["translation"]

    if "recipe" in data:
      shaped_recipes.append(make_recipe(id,data))

def read_json_files(subfolder):
  template_lang_file = os.path.join(lang_path, "eng.json")
  template_lang_file = open(template_lang_file, 'r', encoding='utf-8')
  lang  = json.load(template_lang_file)
  shaped_recipes = []
  shaped_recipes.append("#"*50+ "\n##\tAutomagically generated using Asdrucorp Scripts\n"+"#"*50)

  # Get a list of all files in the subfolder
  for filename in os.listdir(subfolder):
    # Check if the file is a JSON file
    if filename.endswith('.json'):
      file_path = os.path.join(subfolder, filename)
      # Open and read the JSON file
      with open(file_path, 'r', encoding='utf-8') as json_file:
        try:
          data = json.load(json_file)
          make_loot_table(os.path.splitext(filename)[0],data,lang,shaped_recipes)
        except json.JSONDecodeError:
          print(f"Error decoding {filename}")
  
  lang = dict(sorted(lang.items()))
  out_lang_file = os.path.join(lang_path, "en_us.json")
  out_lang_file = open(out_lang_file, 'w', encoding='utf-8')
  out_lang_file.write(json.dumps(lang,indent=2))
  out_lang_file.close()

  recipe_path = 'datapack/data/cgn/function/recipe/shaped.mcfunction'
  recipe_file = open(recipe_path, 'w', encoding='utf-8')
  recipe_file.write("\n".join(shaped_recipes))


output_path = 'datapack/data/cgn/loot_table'
lang_path = 'resourcepack/assets/cgn/lang'
items_path = 'z_other/scripts/items'

read_json_files(items_path)
print("Done")
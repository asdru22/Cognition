import json
root = "C:/Users/Ale/Documents/GitHub/Cognition/"
write_to = root+"datapack/data/cgn/function/recipe/shaped.mcfunction"


def count_loot_table(type,id,count):
    return json.dumps({"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":f"cgn:{type}s/{id}"}],"functions":[{"function":"minecraft:set_count","count":count}]}]})


with open(root+"z_other/scripts/crafting/recipes.json") as recipes:
    out = "#"*50+ "\n##\tAutomagically generated using Asdrucorp Scripts\n"+"#"*50
    recipes = json.loads(recipes.read())

    for key,value in recipes.items():
        out += "\nexecute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{"
        col = 0

        for row in value["recipe"]:
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
        if value["recipe"][1] == [] or value["recipe"][2] == []:
            out +="} "
            if value["recipe"][1] == [] and value["recipe"][2] == []:
                out += "if data storage smithed.crafter:input recipe{1:[],2:[]"
            elif value["recipe"][1] == []:
                out += "if data storage smithed.crafter:input recipe{1:[]"
            elif value["recipe"][2] == []:
                out += "if data storage smithed.crafter:input recipe{2:[]"
  
        out +="} run "
        if value["type"] == "block" or value["type"] == "item":
            out+= "loot replace block ~ ~ ~ container.16 loot "
            if not "count" in value:
                out+="cgn:"+value["type"]+"s/"+key
            else:
                out+=count_loot_table(value["type"],key,value["count"])
        elif value["type"] == "function":
            out +="function cgn:"+key
        


with open(write_to,"w") as f:
    f.write(out)
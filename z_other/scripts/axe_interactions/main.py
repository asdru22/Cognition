import json
import os

datapack = 'datapack/data/cgn'
tags = 'tags/block/axe_interacts_with'
functions = 'function/item/vanilla/dispensable/'

interactions = 'z_other/scripts/axe_interactions/list.json'

interactions = open(interactions,'r')
interactions = json.load(interactions)

function_path = os.path.join(datapack,functions)
function = open(os.path.join(function_path,"axe.mcfunction"),'w')
function_text =  "execute unless block ~ ~ ~ #cgn:axe_interacts_with/main run return fail\nfunction cgn:technical/macros/damage_slot/main {slot:\"contents\",amount:1}\n\n"


for key,value in interactions.items():
  if("blocks" in value):
    tag_path = os.path.join(datapack,tags,f"{key}.json")
    tag = open(tag_path,'w')
    tag.write(json.dumps({"values":value["blocks"]},indent=2))
    tag.close()

  function_text+=f"execute if block ~ ~ ~ #cgn:axe_interacts_with/{key} run return run function cgn:item/vanilla/dispensable/axe_interactions/{key}\n"


  if("to" in value):
    #print(f"from:{key} to:{value["to"]}")
    command = ""
    if("functions" in value):
      f = "\n".join(value["functions"])
      command += f+"\n"
    subfunction = open(os.path.join(function_path,"axe_interactions",f"{key}.mcfunction"),'w')
    target = value['to']
    c = 0

    # Loop through all blocks for this type of copper
    for block in value['blocks']:
      # Generate the Minecraft function command for each block
      #print(f"{block}->{interactions[target]["blocks"][c]}")
      command += f"execute if block ~ ~ ~ {block} run setblock ~ ~ ~ {interactions[target]["blocks"][c]}\n"
      c+=1

    subfunction.write(command)
    subfunction.close()


function.write(function_text)
function.close()
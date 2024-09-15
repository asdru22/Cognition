import json
import os
import itertools
datapack = 'datapack/data/cgn'
tags = 'tags/block/axe_interacts_with'
functions = 'function/item/vanilla/dispensable/'

interactions = 'z_other/scripts/axe_interactions/list.json'
interactions = open(interactions,'r')
interactions = json.load(interactions)

blockstates = 'z_other/scripts/axe_interactions/blockstates.json'
blockstates = open(blockstates,'r')
blockstates = json.load(blockstates)

function_path = os.path.join(datapack,functions)
function = open(os.path.join(function_path,"axe.mcfunction"),'w')
function_text =  "execute unless block ~ ~ ~ #cgn:axe_interacts_with/main run return run function cgn:item/vanilla/dispensable/axe_logic/check_dispensers\nfunction cgn:technical/macros/damage_slot/main {slot:\"contents\",amount:1}\nfunction cgn:item/vanilla/dispensable/axe_logic/check_dispensers\n\n"


def make_blockstates(block,new_block,block_states):
  commands = ""
    
  # Extract keys (state names) and values (possible options) from the block states dictionary
  state_names = list(block_states.keys())
  state_values = list(block_states.values())
  
  # Generate all combinations of block states
  state_combinations = itertools.product(*state_values)
  # For each combination of block states, generate the corresponding command
  for combination in state_combinations:
      # Create the block state string in the form "[state1=value1,state2=value2,...]"
      state_string = ",".join([f"{name}={value}" for name, value in zip(state_names, combination)])
      
      # Generate the Minecraft function command with the state string
      command = f"execute if block ~ ~ ~ {block}[{state_string}] run return run setblock ~ ~ ~ {new_block}[{state_string}]\n"

      # Add the command to the final result
      commands += command
  
  return commands

def make_blocks(value,interactions,target):
  c=0
  replace =""
  # Loop through all blocks for this type of copper
  for block in value['blocks']:
    # Generate the Minecraft function command for each block
    #print(f"{block}->{interactions[target]["blocks"][c]}")
    has_blockstate = False
    for k,v in blockstates.items():
      words = block.split('_')
      for w in words:
        if w == k:
          has_blockstate = True
          replace +=f"execute if block ~ ~ ~ {block} run return run function cgn:item/vanilla/dispensable/axe_interactions/{block}_states\n"
          states_function_path = os.path.join(function_path,"axe_interactions",f"{block}_states.mcfunction")
          states_function_file = open(states_function_path,'w')
          states_function_file.write(make_blockstates(block,interactions[target]["blocks"][c],v))
          states_function_file.close()
    if not has_blockstate:
      replace += f"execute if block ~ ~ ~ {block} run return run setblock ~ ~ ~ {interactions[target]["blocks"][c]}\n"
    c+=1
  return replace
for key,value in interactions.items():
  if("blocks" in value):
    tag_path = os.path.join(datapack,tags,f"{key}.json")
    tag = open(tag_path,'w')
    tag.write(json.dumps({"values":value["blocks"]},indent=2))
    tag.close()
    function_text+=f"execute if block ~ ~ ~ #cgn:axe_interacts_with/{key} run return run function cgn:item/vanilla/dispensable/axe_interactions/{key}\n"
  else:
    function_text+=f"execute if block ~ ~ ~ {key} run return run function cgn:item/vanilla/dispensable/axe_interactions/{key}\n"


  if("to" in value):
    #print(f"from:{key} to:{value["to"]}")
    command = ""
    if("functions" in value):
      f = "\n".join(value["functions"])
      command += f+"\n"
    subfunction = open(os.path.join(function_path,"axe_interactions",f"{key}.mcfunction"),'w')
    target = value['to']

    if "blocks" in value:
      command += make_blocks(value,interactions,target)
    else:
      for k,v in blockstates.items():
        words = key.split('_')
        for w in words:
          if w == k:
            has_blockstate = True
            command +=f"execute if block ~ ~ ~ {key} run return run function cgn:item/vanilla/dispensable/axe_interactions/{key}_states\n"
            states_function_path = os.path.join(function_path,"axe_interactions",f"{key}_states.mcfunction")
            states_function_file = open(states_function_path,'w')
            states_function_file.write(make_blockstates(key,target,v))
            states_function_file.close()
    
    subfunction.write(command)
    subfunction.close()

function.write(function_text)
function.close()
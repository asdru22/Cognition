import os
import json

# Function to create JSON files for each armor and material combination
def generate_trim_json(input_file, output_folder,model_folder):
    # Read input JSON file
    with open(input_file, 'r') as f:
        data = json.load(f)

    materials = data.get('materials', [])
    armors = data.get('armor', [])
    
    # Check if the output folder exists; if not, create it
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Create a JSON file for each armor and material combination
    for armor in armors:
        c = 0
        armor_data = {
            "parent": "minecraft:item/generated",
            "overrides": [],
            "textures": {
                "layer0": f"cgn:item/armor/{armor}"
                }
            }

        for material in materials:
            c = round(c + 0.1, 1)
            trim_override = {
                "model": f"cgn:item/armor/trims/{armor}_{material}_trim",
                    "predicate": {
                        "trim_type": c
                    }
                }
            
            armor_data["overrides"].append(trim_override)
            
            filename = f"{armor}_{material}_trim.json"
            output_path = os.path.join(output_folder, filename)

            # Create the content of the JSON file
            trim_data = {
                "parent": "minecraft:item/generated",
                "textures": {
                    "layer0": f"cgn:item/armor/{armor}",
                    "layer1": f"minecraft:trims/items/boots_trim_{material}"
                    }
                }

            # Write the JSON file
            with open(output_path, 'w') as outfile:
                json.dump(trim_data, outfile, indent=4)

            print(f"Created: {output_path}")


        model_path = os.path.join(model_folder, armor+".json")
        with open(model_path, 'w') as outfile:
            json.dump(armor_data, outfile, indent=4)
        

# Define the input JSON file and output folder
input_file = 'z_other/scripts/trims/in.json'  # Your input JSON file path
output_folder = 'resourcepack/assets/cgn/models/item/armor/trims'  # Your desired output folder path
model_folder = 'resourcepack/assets/cgn/models/item/armor'  # Your desired output folder path

# Generate the combination JSON files
generate_trim_json(input_file, output_folder,model_folder)
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:quartz",Count:4b},{id:"minecraft:structure_block",Count:4b,tag:{cgn:{id:"gloomstone_shard"}}}]} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:input {recipe:[{tag:{cgn:{id:"ebonite_ingot"}},Count:1b},{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}},{Count:1b,tag:{cgn:{id:"ebonite_upgrade_smithing_template"}}}]} run function cgn:recipes/ebonite_upgrade/main

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:input {recipe:[{id:"minecraft:raw_gold",Count:1b},{id:"minecraft:magma_cream",Count:1b},{id:"minecraft:structure_block",Count:1b,tag:{cgn:{id:"midnight_rose"}}}]} run loot replace block ~ ~ ~ container.16 loot cgn:items/ebognite

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 4 if data storage smithed.crafter:input {recipe:[{id:"minecraft:raw_copper",Count:1b},{id:"minecraft:magma_cream",Count:1b},{id:"minecraft:soul_torch",Count:1b},{id:"minecraft:structure_block",Count:1b,tag:{cgn:{id:"wispthorn"}}}]} run loot replace block ~ ~ ~ container.16 loot cgn:items/electroplasm
##################################################
##	Automagically generated using Asdrucorp Scripts
##################################################
data modify storage smithed.crafter:input flags set value ["consume_tools"]
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:bow"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:1b,id:"minecraft:leather"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/automatic_bow
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:copper_ingot"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot {"pools": [{"rolls": 1, "entries": [{"type": "minecraft:loot_table", "value": "cgn:items/cog"}], "functions": [{"function": "minecraft:set_count", "count": 3}]}]}
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.ebonite_upgrade_smithing_template"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,id:"minecraft:deepslate"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],} run loot replace block ~ ~ ~ container.16 loot {"pools": [{"rolls": 1, "entries": [{"type": "minecraft:loot_table", "value": "cgn:items/ebonite_upgrade_smithing_template"}], "functions": [{"function": "minecraft:set_count", "count": 2}]}]}
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:lightning_rod"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/electromodulator
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone_dagger"}'}},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/electroplasm_carver
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,id:"minecraft:stick"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_axe
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_blade
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_boots
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_chestplate
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone_blade"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_dagger
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_helmet
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_hoe
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,id:"minecraft:air"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_leggings
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}},{Slot:1b,id:"minecraft:stick"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_pickaxe
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.gloomstone"}'}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone_shovel
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:copper_ingot"}],2:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot {"pools": [{"rolls": 1, "entries": [{"type": "minecraft:loot_table", "value": "cgn:items/screw"}], "functions": [{"function": "minecraft:set_count", "count": 3}]}]}
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:1b,id:"minecraft:golden_boots"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/shockweave_boots
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:1b,id:"minecraft:golden_chestplate"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/shockweave_chestplate
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:1b,id:"minecraft:golden_helmet"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/shockweave_helmet
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:1b,id:"minecraft:golden_leggings"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:2b,id:"minecraft:air"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/shockweave_leggings
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:stone"},{Slot:1b,id:"minecraft:stone"},{Slot:2b,id:"minecraft:stone"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}},{Slot:1b,id:"minecraft:shield"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'}}],2:[{Slot:0b,id:"minecraft:stone"},{Slot:1b,id:"minecraft:stone"},{Slot:2b,id:"minecraft:stone"}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/soulmender
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:sculk"},{Slot:1b,id:"minecraft:sculk"},{Slot:2b,id:"minecraft:sculk"}],1:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:1b,components:{"minecraft:item_name":'{"translate":"item.cgn.stygian_relic"}'}},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}}],2:[{Slot:0b,id:"minecraft:deepslate"},{Slot:1b,id:"minecraft:deepslate"},{Slot:2b,id:"minecraft:deepslate"}],} run loot replace block ~ ~ ~ container.16 loot cgn:blocks/stygian_totem
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:string"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}}],1:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:crossbow"},{Slot:2b,id:"minecraft:iron_nugget"}],2:[{Slot:0b,components:{"minecraft:item_name":'{"translate":"item.cgn.cog"}'}},{Slot:1b,id:"minecraft:iron_nugget"},{Slot:2b,components:{"minecraft:item_name":'{"translate":"item.cgn.screw"}'}}],} run loot replace block ~ ~ ~ container.16 loot cgn:items/windup_crossbow
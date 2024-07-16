data remove storage cgn:storage root.temp.item
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:warped_fungus_on_a_stick"}

function cgn:item/warped_fungus_on_a_stick/main

execute if entity @s[gamemode=!creative] if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn{consume:true} run function cgn:item/warped_fungus_on_a_stick/consume

execute if entity @s[gamemode=!creative] unless data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn{ignore_durability:1b} run function cgn:item/warped_fungus_on_a_stick/damage

scoreboard players reset @s cgn.used_warped_fungus_on_a_stick
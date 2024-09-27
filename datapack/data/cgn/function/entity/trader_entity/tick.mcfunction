# Ticks a living entity with a wandering trader base

item replace entity @s weapon.mainhand with minecraft:structure_block[item_model="cgn:entity/root"]

# attacking
data modify entity @s[tag=!cgn.attacking] ArmorItems[3].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.custom_model_data.head
data modify entity @s[tag=cgn.attacking] ArmorItems[3].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.custom_model_data.head_attacking

#idle
data modify entity @s[tag=!cgn.attacking] HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.custom_model_data.idle

#moving
data modify entity @s[tag=!cgn.attacking,predicate=cgn:entity_properties/moving,predicate=!cgn:entity_properties/has_vehicle] HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.custom_model_data.moving
# attacking
data modify entity @s[tag=cgn.attacking] HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.custom_model_data.attacking

execute if entity @s[nbt=!{HurtTime:0s}] run function cgn:entity/trader_entity/hurt/main

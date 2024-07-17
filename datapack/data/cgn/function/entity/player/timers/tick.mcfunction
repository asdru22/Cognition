# actionbar
execute if entity @s[predicate=cgn:entity_properties/display_electroplasm] run function cgn:entity/player/electroplasm/display/main

# right click item
execute if score @s cgn.using_item matches 1.. run function cgn:item/usable/tick
execute if score @s cgn.used_warped_fungus_on_a_stick matches 1.. run function cgn:item/warped_fungus_on_a_stick/use

# chargeable armor
execute if entity @s[scores={cgn.sneak_time=1..}] run function cgn:entity/player/scores/sneak_time
execute if entity @s[scores={cgn.air_time=1..}] run function cgn:item/chargeable_armor/in_air/tick
execute if entity @s[scores={cgn.jump=1..}] run function cgn:entity/player/scores/jump

# electroplasm carver
execute if entity @s[predicate=cgn:entity_properties/electroplasm_carver/main] run function cgn:item/electroplasm_carver/tick
execute if entity @s[tag=cgn.electroplasm_carver,predicate=!cgn:entity_properties/electroplasm_carver/main] run function cgn:item/electroplasm_carver/full_reset
execute if entity @s[predicate=cgn:entity_properties/electroplasm_carver/fix] run function cgn:item/electroplasm_carver/fix/main
execute if score @s cgn.used_fishing_rod matches 1.. run function cgn:entity/player/scores/used_fishing_rod

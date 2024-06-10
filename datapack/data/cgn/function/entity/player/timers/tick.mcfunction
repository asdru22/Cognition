# actionbar
execute if entity @s[predicate=cgn:player/display_electroplasm] run function cgn:entity/player/electroplasm/display/main

# score based events
execute if score @s cgn.used_crossbow matches 1.. run function cgn:entity/player/scores/used_crossbow
execute if score @s cgn.used_fishing_rod matches 1.. run function cgn:entity/player/scores/used_fishing_rod
execute if score @s cgn.sneak_time matches 1.. run function cgn:entity/player/scores/sneak_time
execute if score @s cgn.air_time matches 1.. run function cgn:item/chargeable_armor/in_air/tick
execute if entity @s[scores={cgn.jump=1..}] run function cgn:entity/player/scores/jump

# electroplasm carver
execute if entity @s[predicate=cgn:item/electroplasm_carver/main] run function cgn:item/electroplasm_carver/tick
execute if entity @s[tag=cgn.electroplasm_carver,predicate=!cgn:item/electroplasm_carver/main] run function cgn:item/electroplasm_carver/full_reset
execute if entity @s[predicate=cgn:item/electroplasm_carver/fix] run function cgn:item/electroplasm_carver/fix/main
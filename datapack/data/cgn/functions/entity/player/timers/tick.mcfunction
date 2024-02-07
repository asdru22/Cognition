execute if entity @s[predicate=cgn:player/display_electroplasm] run function cgn:entity/player/electroplasm/display/main

execute if score @s cgn.used_crossbow matches 1.. run function cgn:entity/player/scores/used_crossbow

execute if score @s cgn.sneak_time matches 1.. run function cgn:entity/player/scores/sneak_time

execute if score @s cgn.air_time matches 1.. run function cgn:item/chargeable_armor/in_air/tick
execute if entity @s[scores={cgn.jump=1..}] run function cgn:entity/player/scores/jump

execute if entity @s[predicate=cgn:item/electroplasm_carver] run function cgn:item/electroplasm_carver/tick
execute if entity @s[tag=cgn.electroplasm_carver,predicate=!cgn:item/electroplasm_carver] run function cgn:item/electroplasm_carver/full_reset
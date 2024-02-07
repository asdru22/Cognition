execute positioned ~ ~1 ~ run particle minecraft:sweep_attack ^ ^ ^0.7

execute if entity @s[tag=cgn.electroplasm_carver.hit] run function cgn:item/electroplasm_carver/use/hit
advancement revoke @s only cgn:technical/player_hurt_entity/electroplasm_carver
advancement revoke @s only cgn:technical/player_killed_entity/electroplasm_carver
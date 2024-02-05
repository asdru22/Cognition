execute unless predicate cgn:item/electroplasm_carvers/offhand run function cgn:item/electroplasm_carvers/tick/offhand
execute unless predicate cgn:item/electroplasm_carvers/holding run function cgn:item/electroplasm_carvers/disable

scoreboard players operation @s cgn.electroplasm_carvers.damage += @s cgn.damage_dealt
scoreboard players reset @s cgn.damage_dealt

execute if entity @s[scores={cgn.electroplasm_carvers.timer=1..}] run function cgn:item/electroplasm_carvers/use/tick
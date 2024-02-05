scoreboard players add @s cgn.electroplasm_carvers.charges 1
scoreboard players set @s cgn.electroplasm_carvers.timer 20
tag @s add cgn.electroplasm_carvers.hit
tag @s remove cgn.electroplasm_carvers.click

execute if score @s cgn.electroplasm_carvers.charges matches 6.. run function cgn:item/electroplasm_carvers/use/has_charges

execute positioned ~ ~1 ~ run particle minecraft:sweep_attack ^ ^ ^0.7
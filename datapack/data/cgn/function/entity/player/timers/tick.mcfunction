execute if score @s cgn.using_item matches 1.. run function cgn:item/usable/tick

execute if score @s cgn.used_warped_fungus_on_a_stick matches 1.. run function cgn:item/warped_fungus_on_a_stick/use

execute if entity @s[scores={cgn.sneak_time=1..}] run function cgn:entity/player/scores/sneak_time
execute if entity @s[scores={cgn.air_time=1..}] run function cgn:item/chargeable_armor/in_air/tick
execute if entity @s[scores={cgn.jump=1..}] run function cgn:entity/player/scores/jump
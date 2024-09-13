# right click item
execute if score @s cgn.using_item matches 1.. run function cgn:item/vanilla/usable/tick

execute if entity @s[scores={cgn.used_crossbow=1..}] run function cgn:entity/player/scores/use_ranged_weapon
execute if entity @s[scores={cgn.used_bow=1..}] run function cgn:entity/player/scores/use_ranged_weapon
execute if score @s cgn.used_crossbow matches 1.. if predicate cgn:entity/holding/windup_crossbow run function cgn:item/windup_crossbow/use/tick

execute if score @s[tag=!cgn.charged_armor_jump] cgn.sneak_time matches 1.. run function cgn:item/chargeable_armor/sneak/sneak

execute if score @s cgn.air_time matches 1.. run function cgn:item/chargeable_armor/in_air/tick

advancement revoke @s[advancements={cgn:technical/using_item/shield=true}] only cgn:technical/using_item/shield

execute if entity @s[predicate=cgn:player/display_electroplasm] run function cgn:entity/player/electroplasm/display/main
# [gamemode=!creative,gamemode=!spectator,advancements={cgn:gameplay/unlock_electroplasm=true}] 
execute if entity @s[predicate=cgn:item/electroplasm_carver] run function cgn:item/electroplasm_carver/tick

execute if entity @s[tag=cgn.electroplasm_carver,predicate=!cgn:item/electroplasm_carver] run function cgn:item/electroplasm_carver/full_reset
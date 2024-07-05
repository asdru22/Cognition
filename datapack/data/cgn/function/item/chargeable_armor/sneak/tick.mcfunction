execute if entity @s[tag=!cgn.chargeable_armor.jump,predicate=cgn:entity/wearing/chargeable_armor/reset] run function cgn:item/chargeable_armor/sneak/reset

execute if score @s cgn.sneak_time matches 1 run attribute @s generic.jump_strength modifier add cgn:chargeable_armor_no_jump -1 add_value

scoreboard players operation #temp cgn.dummy = @s cgn.sneak_time
scoreboard players operation #temp cgn.dummy %= #10 cgn.dummy
execute if score #temp cgn.dummy matches 5 run function cgn:item/chargeable_armor/sneak/lightning

execute if score @s[tag=!cgn.chargeable_armor.jump] cgn.sneak_time matches 100.. run function cgn:item/chargeable_armor/sneak/charged
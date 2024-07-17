execute if entity @s[tag=!cgn.chargeable_armor.in_air,predicate=cgn:entity_properties/chargeable_armor/reset] run return run function cgn:item/chargeable_armor/sneaking/reset

execute if score @s cgn.sneak_time matches 1 run attribute @s generic.jump_strength modifier add cgn:charged_armor.charging -1 add_value

scoreboard players operation $temp cgn.dummy = @s cgn.sneak_time
scoreboard players operation $temp cgn.dummy %= #10 cgn.dummy
execute if score $temp cgn.dummy matches 5 run function cgn:item/chargeable_armor/sneaking/lightning

execute if score @s[tag=!cgn.chargeable_armor.charged] cgn.sneak_time matches 100.. run function cgn:item/chargeable_armor/sneaking/charged
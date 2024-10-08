execute if entity @s[gamemode=!creative] run function cgn:item/chargeable_armor/modify/use

tag @s add cgn.chargeable_armor.in_air
tag @s remove cgn.chargeable_armor.charged

attribute @s gravity modifier add cgn:chargeable_armor.gravity -0.06 add_value
attribute @s safe_fall_distance modifier add cgn:chargeable_armor.safe_fall_distance 10000 add_value

attribute @s jump_strength modifier remove cgn:charged_armor.charged

scoreboard players set @s cgn.air_time 1
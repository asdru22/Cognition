scoreboard players set @s cgn.air_time 1

tag @s remove cgn.chargeable_armor.jump
attribute @s generic.gravity modifier add cgn.chargeable_armor_gravity -0.06 add_value
attribute @s generic.safe_fall_distance modifier add cgn.chargeable_armor_fall_distance 10000 add_value
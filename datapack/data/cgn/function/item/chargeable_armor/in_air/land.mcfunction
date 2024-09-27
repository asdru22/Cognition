scoreboard players reset @s cgn.air_time
scoreboard players reset @s cgn.sneak_time
tag @s add cgn.me

attribute @s gravity modifier remove cgn:chargeable_armor.gravity
attribute @s safe_fall_distance modifier remove cgn:chargeable_armor.safe_fall_distance

execute if entity @s[tag=cgn.chargeable_armor.launch] run function cgn:item/chargeable_armor/landing_attack/main with entity @s

tag @s remove cgn.me
tag @s remove cgn.chargeable_armor.launch
tag @s remove cgn.chargeable_armor.charged
tag @s remove cgn.chargeable_armor.in_air

playsound cgn:item.chargeable_armor.land master @a[distance=..16] ~ ~ ~
scoreboard players reset @s cgn.air_time
scoreboard players reset @s cgn.sneak_time
tag @s add cgn.me
attribute @s minecraft:generic.jump_strength modifier remove 5615aea3-7dfd-4ed4-99fe-08a93b9c2bc2
attribute @s generic.safe_fall_distance modifier remove dd881c8b-7091-400d-893a-8053753202da
attribute @s generic.gravity modifier remove c2827391-16fb-48b4-ab9e-7112bd3ca98d

function srn:technical/string_uuid/init

execute if entity @s[tag=cgn.chargeable_armor.launch] run function cgn:item/chargeable_armor/in_air/targets with entity @s

execute as @e[type=item,nbt={Item:{id:"minecraft:structure_block",tag:{cgn:{id:"ebognite"}}}},distance=..3] at @s run function cgn:item/chargeable_armor/convert_ebognite/init

tag @s remove cgn.me
tag @s remove cgn.chargeable_armor.launch

playsound cgn:item.chargeable_armor.land master @a[distance=..16] ~ ~ ~
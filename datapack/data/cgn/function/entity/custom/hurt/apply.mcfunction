$scoreboard players set $temp cgn.dummy $(rgb)
execute store result entity @s ArmorItems[3].components."minecraft:dyed_color".rgb int 1 run scoreboard players add $temp cgn.dummy 1
tag @s add cgn.entity.hurt


execute store result score $temp cgn.dummy run data get entity @s Health 100
scoreboard players set $damage cgn.dummy 102400

scoreboard players operation $damage cgn.dummy -= $temp cgn.dummy
scoreboard players operation @s cgn.health -= $damage cgn.dummy

execute if score @s cgn.health matches ..0 run return run function cgn:entity/custom/states/dead/main

data merge entity @s {Health:2048}

function cgn:entity/custom/hurt/sound with entity @s ArmorItems[3].components."minecraft:custom_data".cgn
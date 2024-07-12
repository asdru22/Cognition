$scoreboard players set $temp cgn.dummy $(rgb)
execute store result entity @s ArmorItems[3].components."minecraft:dyed_color".rgb int 1 run scoreboard players remove $temp cgn.dummy 1
tag @s remove cgn.entity.hurt
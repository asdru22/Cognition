scoreboard players operation $temp cgn.dummy = $gametime cgn.dummy
$scoreboard players set $duration cgn.dummy $(duration)

scoreboard players operation $temp cgn.dummy %= #24000 cgn.dummy
scoreboard players operation $temp cgn.dummy %= $duration cgn.dummy

scoreboard players operation $temp cgn.dummy *= #256 cgn.dummy

execute if entity @s[tag=cgn.entity.hurt] run scoreboard players add $temp cgn.dummy 1

execute store result entity @s ArmorItems[3].components."minecraft:dyed_color".rgb int 1 run scoreboard players get $temp cgn.dummy
# Raycasts
execute if block ^ ^ ^0.01 minecraft:barrel{Lock:"§stygian_totem\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 as @n[type=minecraft:item_display,distance=..0.0001,tag=cgn.block.stygian_totem] at @s positioned ~ ~-1 ~ run return run function cgn:block/stygian_totem/click/found
scoreboard players remove @s cgn.dummy 1
execute if score @s cgn.dummy matches 1.. positioned ^ ^ ^0.01 run function cgn:block/stygian_totem/click/raycast
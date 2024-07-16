scoreboard players remove $temp cgn.dummy 1
execute positioned ^ ^ ^0.05 if block ~ ~ ~ flower_pot align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=cgn.block,dx=0,distance=..1] run return run function cgn:block/flower_pot/place
execute if score $temp cgn.dummy matches 1.. positioned ^ ^ ^0.05 if block ~ ~ ~ #air if entity @s[distance=..5] run function cgn:block/flower_pot/cast
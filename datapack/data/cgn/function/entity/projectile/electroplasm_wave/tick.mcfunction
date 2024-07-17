scoreboard players operation $temp_id cgn.dummy = @s cgn.id
execute as @e[type=!#cgn:inanimate,distance=..10,dx=0,predicate=cgn:entity_properties/electroplasm_carver/projectile_can_hit] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] positioned ~0.6 ~0.6 ~0.6 run function cgn:entity/projectile/electroplasm_wave/hit/main

tp @s ^ ^ ^0.33
execute unless block ~ ~ ~ #cgn:raycast_ignore run kill

particle dust{color:[0.298,0.651,0.596],scale:0.5} ^-0.9 ^-0.1 ^-0.4 0 0 0 1 0 normal
particle dust{color:[0.298,0.651,0.596],scale:0.5} ^0.9 ^-0.1 ^-0.4 0 0 0 1 0 normal
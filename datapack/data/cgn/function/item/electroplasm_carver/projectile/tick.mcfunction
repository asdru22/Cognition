execute if score #temp cgn.dummy matches 0 run playsound cgn:entity.electroplasm_wave.swoosh master @a[distance=..16] ~ ~ ~ 0.5 1.5

scoreboard players add @s cgn.dummy 1
kill @s[scores={cgn.dummy=40..}]
execute as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/electroplasm_carver/projectile_can_hit,distance=..10,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] positioned ~0.6 ~0.6 ~0.6 run function cgn:item/electroplasm_carver/projectile/hit/main

tp @s ^ ^ ^0.33
execute unless block ~ ~ ~ #cgn:raycast_ignore run kill

particle dust{color:[0.298,0.651,0.596],scale:0.5} ^-0.9 ^-0.1 ^-0.4 0 0 0 1 0 normal
particle dust{color:[0.298,0.651,0.596],scale:0.5} ^0.9 ^-0.1 ^-0.4 0 0 0 1 0 normal
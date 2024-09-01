execute unless block ~ ~ ~ #cgn:raycast_ignore run return run function cgn:item/malachite_knife/land
tp @s ^ ^ ^0.2
scoreboard players remove @s cgn.dummy2 1

execute as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/malachite_knife_can_hit,distance=..10,dx=0] positioned ~-0.6 ~-0.8 ~-0.6 if entity @s[dx=0] at @s run function cgn:item/malachite_knife/hit with entity @n[type=item_display,tag=cgn.me] item.components."minecraft:custom_data".cgn

execute if score @s cgn.dummy2 matches 1.. at @s run function cgn:item/malachite_knife/move_loop
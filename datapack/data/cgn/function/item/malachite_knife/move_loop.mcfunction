execute unless block ~ ~ ~ #cgn:raycast_ignore run return run function cgn:item/malachite_knife/land
tp @s ^ ^ ^0.2
scoreboard players remove @s cgn.dummy2 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,dx=0] at @s run function cgn:item/malachite_knife/hit with storage cgn:temp root.malachite_knife

execute if score @s cgn.dummy2 matches 1.. at @s run function cgn:item/malachite_knife/move_loop
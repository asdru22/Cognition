execute unless block ~ ~ ~ #cgn:raycast_ignore run return run function cgn:item/double_edged_sword/item_display_hit_block with storage cgn:temp root.double_edged_sword

tp @s[tag=!cgn.double_edged_sword.returning] ^ ^ ^0.13
execute if entity @s[tag=cgn.double_edged_sword.returning] run function cgn:item/double_edged_sword/bounce/move_to_owner with storage cgn:temp root.double_edged_sword
scoreboard players remove @s cgn.dummy2 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,dx=0] at @s run function cgn:item/double_edged_sword/hit with storage cgn:temp root.double_edged_sword

execute if score @s cgn.dummy2 matches 1.. at @s run function cgn:item/double_edged_sword/move_loop
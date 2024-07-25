scoreboard players remove $temp cgn.dummy 1
execute at @s if block ^ ^ ^0.05 #cgn:raycast_ignore run tp @s ^ ^ ^0.05

execute as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/double_edged_sword_projectile/can_hit,distance=..10,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] positioned ~0.6 ~0.6 ~0.6 run function cgn:item/ebonite_sword/mace/hit/main

execute if score $temp cgn.dummy matches 1.. run function cgn:item/ebonite_sword/mace/move_raycast
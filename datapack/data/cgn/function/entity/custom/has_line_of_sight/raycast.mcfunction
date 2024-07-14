scoreboard players add $temp cgn.dummy 1
execute if entity @e[predicate=cgn:entity_properties/targeted_by_mobs,distance=..2] run return run tag @s add cgn.entity.has_line_of_sight
execute if entity @s[distance=..20,tag=!cgn.entity.has_line_of_sight] if block ^ ^ ^0.05 #cgn:seetrough positioned ^ ^ ^0.05 run function cgn:entity/custom/has_line_of_sight/raycast
# Starts a line of sight raycast

tag @s remove cgn.has_line_of_sight
execute anchored eyes facing entity @n[predicate=cgn:entity_properties/can_be_damaged,distance=..16] eyes run function cgn:entity/trader_entity/hostile/line_of_sight_raycast
execute if entity @s[tag=cgn.has_line_of_sight] run tag @s add cgn.attacking

execute if entity @s[tag=cgn.has_line_of_sight,tag=cgn.iceologer] unless entity @s[scores={cgn.dummy2=0..3}] run playsound cgn:entity.iceologer.attack hostile @a[distance=..16]

# Starts a line of sight raycast
scoreboard players set $temp cgn.dummy 0
execute anchored eyes positioned ^ ^ ^ facing entity @n[predicate=cgn:entity_properties/targeted_by_mobs,distance=..20] eyes run function cgn:entity/custom/has_line_of_sight/raycast
scoreboard players operation @s cgn.dummy = $temp cgn.dummy
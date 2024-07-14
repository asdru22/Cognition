scoreboard players reset $temp cgn.dummy

execute positioned ~ ~1 ~ facing entity @p[predicate=cgn:entity_properties/targeted_by_mobs,distance=..2] eyes rotated ~ 0 run function cgn:entity/gloomstone_sentinel/find_player_raycast

execute if score $temp cgn.dummy matches 1 run return 1
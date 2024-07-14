execute as @a[predicate=cgn:entity_properties/targeted_by_mobs,distance=..2,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function cgn:entity/gloomstone_sentinel/found_player

execute if entity @s[distance=2..] run return fail
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #cgn:raycast_ignore run function cgn:entity/gloomstone_sentinel/find_player_raycast
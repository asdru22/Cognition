scoreboard players add @s cgn.dummy 1
execute if entity @s[scores={cgn.dummy=200..}] run function cgn:entity/bubble/pop

execute unless predicate cgn:entity_properties/has_passenger positioned ~-.5 ~ ~-.5 run ride @n[type=#cgn:can_enter_bubble,tag=!smithed.strict,tag=!smithed.block,dx=0,predicate=!cgn:entity_properties/has_vehicle] mount @s

execute positioned ~-1.5 ~-1.5 ~-1.5 if entity @n[type=!#cgn:can_enter_bubble,tag=!smithed.strict,dx=2,dz=2,dy=2] positioned ~1.5 ~1.5 ~1.5 run function cgn:entity/bubble/pop

execute if entity @s[tag=!cgn.bubble.hit_ceiling] unless block ~ ~1.5 ~ #cgn:raycast_ignore run function cgn:entity/bubble/hit_ceiling
execute if entity @s[tag=cgn.bubble.hit_ceiling] if block ~ ~1.5 ~ #cgn:raycast_ignore run function cgn:entity/bubble/no_ceiling
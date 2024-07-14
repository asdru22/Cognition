scoreboard players remove $temp cgn.dummy 1
execute as @a[predicate=cgn:entity_properties/targeted_by_mobs,distance=..10,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run damage @s 0.3 cgn:gloomstone_beam

execute if score $temp cgn.dummy matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #cgn:raycast_ignore run function cgn:entity/projectile/gloomstone_beam/raycast
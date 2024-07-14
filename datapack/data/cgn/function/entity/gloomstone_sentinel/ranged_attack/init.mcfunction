tp @s ~ ~ ~ facing entity @n[predicate=cgn:entity_properties/targeted_by_mobs,distance=..20] eyes
execute facing entity @n[predicate=cgn:entity_properties/targeted_by_mobs,distance=..20] feet rotated ~ ~5 run tp @s ~ ~ ~ ~ ~
data modify storage cgn:storage root.temp.rotation set from entity @s Rotation

data modify storage cgn:storage root.temp.macro.yaw set from storage cgn:storage root.temp.rotation[0]
data modify storage cgn:storage root.temp.macro.pitch set from storage cgn:storage root.temp.rotation[1]

scoreboard players add @s cgn.dummy 200

execute store result storage cgn:storage root.temp.macro.dist float 0.05 run scoreboard players get @s cgn.dummy
execute store result storage cgn:storage root.temp.macro.offset float 0.025 run scoreboard players get @s cgn.dummy

function cgn:entity/gloomstone_sentinel/ranged_attack/get_distance_from_target
execute positioned ~ ~2.3 ~ run function cgn:entity/gloomstone_sentinel/ranged_attack/item_display with storage cgn:storage root.temp.macro

tag @s remove cgn.entity.has_line_of_sight

tag @s add cgn.entity.gloomstone_sentry.has_attacked

scoreboard players set @s cgn.animation_timer 10

execute as @a[distance=..25] at @s run playsound cgn:entity.gloomstone_sentinel.ranged_attack hostile @s ~ ~ ~ 2 0.85
tag @s remove cgn.entity.gloomstone_sentry.has_attacked

execute if entity @a[predicate=cgn:entity_properties/targeted_by_mobs,distance=..5] run return run function cgn:entity/gloomstone_sentinel/animations/close

scoreboard players set @s cgn.state 4
execute store result score @s cgn.animation_timer run random value 110..140
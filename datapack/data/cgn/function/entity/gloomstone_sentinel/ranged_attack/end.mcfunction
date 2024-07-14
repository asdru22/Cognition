scoreboard players set @s cgn.state 4
execute store result score @s cgn.animation_timer run random value 110..140
tag @s remove cgn.entity.gloomstone_sentry.has_attacked
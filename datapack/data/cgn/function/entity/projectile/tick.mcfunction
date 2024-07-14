scoreboard players remove @s cgn.animation_timer 1

execute if entity @s[tag=cgn.projectile.gloomstone_beam] run function cgn:entity/projectile/gloomstone_beam/tick

kill @s[scores={cgn.animation_timer=..0}]
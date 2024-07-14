execute if entity @s[tag=!cgn.projectile.setup] run return run function cgn:entity/projectile/setup {duration:20}

particle explosion

execute store result score $temp cgn.dummy run data get entity @s item.components."minecraft:custom_data".cgn.sc 10
execute if score $temp cgn.dummy matches 1.. run function cgn:entity/projectile/gloomstone_beam/raycast

execute if score @s cgn.animation_timer matches 19 run return run function cgn:entity/projectile/gloomstone_beam/anim1 with entity @s item.components."minecraft:custom_data".cgn

execute if score @s cgn.animation_timer matches 15 run return run function cgn:entity/projectile/gloomstone_beam/anim2 with entity @s item.components."minecraft:custom_data".cgn

execute if score @s cgn.animation_timer matches 3 run return run function cgn:entity/projectile/gloomstone_beam/anim3 with entity @s item.components."minecraft:custom_data".cgn
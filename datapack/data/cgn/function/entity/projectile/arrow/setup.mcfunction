execute on owner if entity @s[tag=!cgn.me] run return fail

tag @s add cgn.tick
tag @s add cgn.projectile.no_timer
tag @s add cgn.projectile

execute if items entity @s contents arrow[minecraft:custom_data~{cgn:{projectile:1b}}] run function cgn:entity/projectile/arrow/custom
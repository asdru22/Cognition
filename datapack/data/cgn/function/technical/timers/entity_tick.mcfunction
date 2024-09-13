execute if entity @s[tag=cgn.block] run return run execute positioned ~ ~-1 ~ run function cgn:block/tick

execute if entity @s[tag=cgn.entity] run return run function cgn:entity/tick

execute if entity @s[tag=cgn.projectile] run return run function cgn:entity/projectile/tick

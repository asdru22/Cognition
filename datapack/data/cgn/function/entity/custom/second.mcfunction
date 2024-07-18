execute on attacker run tag @s[type=!minecraft:player] add cgn.mob_target

execute if predicate cgn:random_chance/1_10 if entity @s[scores={cgn.state=0}] run return run function cgn:entity/custom/sounds/idle with entity @s ArmorItems[3].components."minecraft:custom_data".cgn

execute if entity @s if entity @s[scores={cgn.state=1}] run return run function cgn:entity/custom/sounds/walking with entity @s ArmorItems[3].components."minecraft:custom_data".cgn

# other sounds
execute if entity @s[tag=cgn.entity.gloomstone_sentinel,scores={cgn.state=4}] run return run function cgn:entity/gloomstone_sentinel/open/second

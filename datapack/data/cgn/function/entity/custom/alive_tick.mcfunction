execute if entity @s[tag=!cgn.entity.hurt,nbt=!{Health:1024f}] run function cgn:entity/custom/hurt/apply with entity @s ArmorItems[3].components."minecraft:dyed_color"
execute if entity @s[tag=cgn.entity.hurt,nbt={HurtTime:0s}] run function cgn:entity/custom/hurt/remove with entity @s ArmorItems[3].components."minecraft:dyed_color"

$execute if score @s cgn.state matches 0..1 if function cgn:entity/$(id)/find_player run function cgn:entity/custom/states/start_attacking

execute if entity @s[scores={cgn.state=0},predicate=cgn:entity_properties/moving] run return run function cgn:entity/custom/states/walking
execute if entity @s[scores={cgn.state=1},predicate=!cgn:entity_properties/moving] run return run function cgn:entity/custom/states/idle
execute if entity @s[scores={cgn.state=2,cgn.animation_timer=0}] run return run function cgn:entity/custom/states/walking

execute if entity @s[tag=cgn.entity.gloomstone_sentinel] run function cgn:entity/gloomstone_sentinel/tick
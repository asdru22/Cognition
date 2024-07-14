scoreboard players remove @s[scores={cgn.animation_timer=1..}] cgn.animation_timer 1

execute if score @s cgn.state matches 0.. run return run function cgn:entity/custom/alive_tick with entity @s ArmorItems[3].components."minecraft:custom_data".cgn

execute if score @s cgn.animation_timer matches ..2 run function cgn:entity/custom/states/dead/kill
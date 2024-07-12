scoreboard players remove @s cgn.animation_timer 1

execute if score @s cgn.state matches 0.. run return run function cgn:entity/custom/alive_tick

execute if score @s cgn.animation_timer matches ..2 run function cgn:entity/custom/remove
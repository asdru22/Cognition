execute if score @s cgn.state matches 2 if score @s cgn.animation_timer matches 10 run return run execute positioned ^ ^ ^2 run function cgn:entity/gloomstone_sentinel/melee_attack

execute if score @s cgn.state matches 0..1 if entity @a[distance=7..20,gamemode=!creative,gamemode=!spectator] run return run function cgn:entity/gloomstone_sentinel/animations/open

execute if score @s cgn.state matches 3 if score @s cgn.animation_timer matches 3 run return run function cgn:entity/gloomstone_sentinel/animations/open_loop

execute if score @s cgn.state matches 4 unless entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] run return run function cgn:entity/gloomstone_sentinel/animations/close

execute if score @s cgn.state matches 5 if score @s cgn.animation_timer matches 3 run return run function cgn:entity/gloomstone_sentinel/close
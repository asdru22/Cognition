execute as @a at @s run function cgn:entity/player/timers/tick
execute as @e[tag=cgn.tick,type=#cgn:affected/tick] at @s run function cgn:entity/timers/tick

scoreboard players add $gametime cgn.dummy 1
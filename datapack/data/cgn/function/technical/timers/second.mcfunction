execute as @e[tag=cgn.tick,type=#cgn:affected/second] at @s run function cgn:entity/timers/second
execute as @a at @s run function cgn:entity/player/timers/second

schedule function cgn:technical/timers/second 1s replace
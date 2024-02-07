execute as @e[type=#cgn:affected/second,tag=cgn.second] at @s run function cgn:technical/timers/entity_second
execute as @a at @s run function cgn:entity/player/timers/second
schedule function cgn:technical/timers/second 1s replace
scoreboard objectives add cgn.dummy dummy
scoreboard objectives add cgn.dummy2 dummy

scoreboard objectives add cgn.air_time dummy

scoreboard objectives add cgn.used_crossbow used:crossbow

scoreboard objectives add cgn.sneak_time custom:sneak_time

scoreboard objectives add cgn.electroplasm.current dummy
scoreboard objectives add cgn.electroplasm.max dummy

scoreboard objectives add cgn.damage_dealt custom:damage_dealt
scoreboard objectives add cgn.electroplasm_carvers.damage dummy
scoreboard objectives add cgn.electroplasm_carvers.charges dummy
scoreboard objectives add cgn.electroplasm_carvers.timer dummy

scoreboard players set #2 cgn.dummy 2
scoreboard players set #5 cgn.dummy 5
scoreboard players set #8 cgn.dummy 8
scoreboard players set #10 cgn.dummy 10
scoreboard players set #20 cgn.dummy 20
scoreboard players set #100 cgn.dummy 100

schedule function cgn:technical/timers/second 1t replace
schedule function cgn:technical/timers/10_seconds 1t replace
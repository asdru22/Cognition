scoreboard objectives add cgn.dummy dummy

scoreboard objectives add cgn.health dummy
scoreboard objectives add cgn.state dummy
scoreboard objectives add cgn.animation_timer dummy

execute store result score $gametime cgn.dummy run time query gametime

scoreboard players set #24000 cgn.dummy 24000
scoreboard players set #256 cgn.dummy 256
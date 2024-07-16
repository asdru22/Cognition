scoreboard objectives add cgn.dummy dummy

scoreboard objectives add cgn.using_item dummy
scoreboard objectives add cgn.using_item_new dummy

scoreboard objectives add cgn.heal dummy

scoreboard objectives add cgn.health dummy
scoreboard objectives add cgn.state dummy
scoreboard objectives add cgn.animation_timer dummy

scoreboard objectives add cgn.leave_game custom:leave_game

execute store result score $gametime cgn.dummy run time query gametime

execute positioned 3000000 0 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{count:1b,id:"minecraft:stone",Slot:0b}]}

function cgn:technical/math/set_constants

function cgn:technical/timers/second
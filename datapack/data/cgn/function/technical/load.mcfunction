scoreboard objectives add cgn.dummy dummy
scoreboard objectives add cgn.dummy2 dummy

scoreboard objectives add cgn.using_item dummy
scoreboard objectives add cgn.using_item_new dummy

scoreboard objectives add cgn.id dummy

scoreboard objectives add cgn.heal dummy

scoreboard objectives add cgn.health dummy
scoreboard objectives add cgn.state dummy
scoreboard objectives add cgn.animation_timer dummy

scoreboard objectives add cgn.leave_game custom:leave_game

scoreboard objectives add cgn.used_warped_fungus_on_a_stick used:warped_fungus_on_a_stick

scoreboard objectives add cgn.sneak_time custom:sneak_time
scoreboard objectives add cgn.jump custom:jump
scoreboard objectives add cgn.air_time dummy

scoreboard objectives add cgn.air air

scoreboard objectives add cgn.electroplasm.current dummy
scoreboard objectives add cgn.electroplasm.max dummy

scoreboard objectives add cgn.damage_dealt custom:damage_dealt
scoreboard objectives add cgn.electroplasm_carver.damage dummy
scoreboard objectives add cgn.electroplasm_carver.charges dummy
scoreboard objectives add cgn.electroplasm_carver.timer dummy

execute store result score $gametime cgn.dummy run time query gametime

execute positioned 3000000 0 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{count:1b,id:"minecraft:stone",Slot:0b}]}

function cgn:technical/math/set_constants

function cgn:technical/timers/second
function cgn:technical/timers/10_seconds
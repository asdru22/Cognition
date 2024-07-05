scoreboard objectives add cgn.dummy dummy
scoreboard objectives add cgn.dummy2 dummy

scoreboard objectives add cgn.id dummy

scoreboard objectives add cgn.old_xp dummy

scoreboard objectives add cgn.using_item dummy
scoreboard objectives add cgn.using_item_new dummy

scoreboard objectives add cgn.throw_lingering_potion used:lingering_potion
scoreboard objectives add cgn.throw_splash_potion used:splash_potion
scoreboard objectives add cgn.used_warped_fungus_on_a_stick used:warped_fungus_on_a_stick

scoreboard objectives add cgn.used_item_frame used:item_frame

scoreboard objectives add cgn.leave_game custom:leave_game

execute positioned 3000000 ~ 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{count:1b,id:"minecraft:stone",Slot:0b}]}

function cgn:entity/natural_spawning/timer
function cgn:technical/timers/second
execute unless score $mob_cap cgn.dummy matches -2147483648..2147483647 run scoreboard players set $mob_cap cgn.dummy 0

scoreboard players set #100 cgn.dummy 100

execute unless data storage cgn:storage root.players[] run data modify storage cgn:storage root.players set value []
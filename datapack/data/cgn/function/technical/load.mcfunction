scoreboard objectives add cgn.dummy dummy

scoreboard objectives add cgn.using_item dummy
scoreboard objectives add cgn.using_item_new dummy

scoreboard objectives add cgn.heal dummy

scoreboard objectives add cgn.health dummy
scoreboard objectives add cgn.state dummy
scoreboard objectives add cgn.animation_timer dummy

execute store result score $gametime cgn.dummy run time query gametime


function cgn:technical/math/set_constants

function cgn:technical/timers/second
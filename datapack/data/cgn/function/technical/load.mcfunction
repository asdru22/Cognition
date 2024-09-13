scoreboard objectives add cgn.dummy dummy
scoreboard objectives add cgn.dummy2 dummy

scoreboard objectives add cgn.used_crossbow used:crossbow
scoreboard objectives add cgn.used_bow used:bow

scoreboard objectives add cgn.using_item dummy
scoreboard objectives add cgn.using_item_new dummy

scoreboard objectives add cgn.animation_timer dummy

function cgn:technical/math/set_constants

schedule function cgn:technical/timers/tick 1t replace
schedule function cgn:technical/timers/second 1t replace
schedule function cgn:technical/timers/10_seconds 1t replace
$scoreboard players add @s cgn.electroplasm.current $(amount)
scoreboard players operation @s cgn.electroplasm.current < @s cgn.electroplasm.max
function cgn:entity/player/electroplasm/calc
advancement grant @s only cgn:gameplay/unlock_electroplasm
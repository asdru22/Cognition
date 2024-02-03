$scoreboard players add @s cgn.electroplasm.current $(amount)
scoreboard players operation @s cgn.electroplasm.current < @s cgn.electroplasm.max
function cgn:entity/player/electroplasm/update_bar
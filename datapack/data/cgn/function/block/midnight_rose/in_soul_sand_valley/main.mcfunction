scoreboard players add @s[tag=!srn.potted,scores={cgn.dummy=7}] cgn.dummy2 1

scoreboard players add @s[tag=srn.potted] cgn.dummy2 1
execute if score @s cgn.dummy2 matches 60.. run function cgn:block/midnight_rose/in_soul_sand_valley/convert
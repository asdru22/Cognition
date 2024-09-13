execute if score @s cgn.dummy matches 10.. positioned ~ ~1 ~ if block ~ ~ ~ #air run function cgn:block/greek_fire/summon_bubble
execute if score @s cgn.dummy2 matches 2.. positioned ~ ~1 ~ if block ~ ~ ~ #air run function cgn:block/greek_fire/summon_steam

execute if block ~ ~-1 ~ light[waterlogged=true] run scoreboard players add @s cgn.dummy2 1
execute if block ~ ~ ~ #cgn:bubble/source run scoreboard players add @s cgn.dummy 1
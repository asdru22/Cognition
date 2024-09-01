execute unless block ~ ~ ~ light run function cgn:block/greek_fire/extinguish
execute if block ~ ~-1 ~ #cgn:transparent run function cgn:block/greek_fire/extinguish

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#cgn:greek_fire_ignore,tag=!smithed.strict,dx=0,distance=..5] run function cgn:block/greek_fire/burn_entity
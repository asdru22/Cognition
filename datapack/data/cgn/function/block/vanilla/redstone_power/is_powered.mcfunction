
scoreboard players set #out cgn.dummy 0

#generic: static
execute if block ~ ~1 ~ #cgn:redstone_power/top unless block ~ ~1 ~ #cgn:redstone_power/top[power=0] unless block ~ ~1 ~ #cgn:redstone_power/top[powered=false] run scoreboard players set #out cgn.dummy 1
execute if block ~ ~-1 ~ #cgn:redstone_power/bottom[powered=true,face=ceiling] run scoreboard players set #out cgn.dummy 1
execute if block ~1 ~ ~ #cgn:redstone_power/side[powered=true,facing=east] run scoreboard players set #out cgn.dummy 1
execute if block ~-1 ~ ~ #cgn:redstone_power/side[powered=true,facing=west] run scoreboard players set #out cgn.dummy 1
execute if block ~ ~ ~1 #cgn:redstone_power/side[powered=true,facing=south] run scoreboard players set #out cgn.dummy 1
execute if block ~ ~ ~-1 #cgn:redstone_power/side[powered=true,facing=north] run scoreboard players set #out cgn.dummy 1

#redstone torch
execute if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run scoreboard players set #out cgn.dummy 1

#redstone dust
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:redstone_wire unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out cgn.dummy 1
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:redstone_wire[west=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out cgn.dummy 1
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:redstone_wire[east=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out cgn.dummy 1
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:redstone_wire[north=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out cgn.dummy 1
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:redstone_wire[south=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out cgn.dummy 1

#check opaque
execute if block ~ ~ ~ #cgn:transparent run scoreboard players set #out cgn.dummy 0
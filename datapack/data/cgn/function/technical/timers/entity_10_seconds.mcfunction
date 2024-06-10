execute if entity @s[tag=cgn.midnight_rose] if biome ~ ~ ~ soul_sand_valley run function cgn:block/midnight_rose/in_soul_sand_valley/main

execute if entity @s[tag=cgn.burns_in_sunlight] unless predicate cgn:entity/wandering_trader_night positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s 
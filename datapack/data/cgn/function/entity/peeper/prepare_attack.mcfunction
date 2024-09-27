# Makes animations and such for a spell-casting cycle
scoreboard players add @s cgn.dummy2 0
execute if entity @s[scores={cgn.dummy2=0..}] run function cgn:entity/trader_entity/hostile/line_of_sight
scoreboard players add @s[scores={cgn.dummy2=0..}] cgn.dummy2 1

execute if entity @s[tag=cgn.has_line_of_sight] facing entity @n[predicate=cgn:entity_properties/can_be_damaged,distance=..16] eyes run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=!cgn.has_line_of_sight] run function cgn:entity/peeper/prepared_attack
execute if entity @s[scores={cgn.dummy2=3..}] run function cgn:entity/peeper/prepared_attack
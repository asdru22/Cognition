particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
execute if block ~ ~ ~ waxed_chiseled_copper run setblock ~ ~ ~ chiseled_copper
execute if block ~ ~ ~ waxed_copper_block run setblock ~ ~ ~ copper_block
execute if block ~ ~ ~ waxed_copper_bulb run setblock ~ ~ ~ copper_bulb
execute if block ~ ~ ~ waxed_copper_door run setblock ~ ~ ~ copper_door
execute if block ~ ~ ~ waxed_copper_grate run setblock ~ ~ ~ copper_grate
execute if block ~ ~ ~ waxed_copper_trapdoor run setblock ~ ~ ~ copper_trapdoor
execute if block ~ ~ ~ waxed_cut_copper run setblock ~ ~ ~ cut_copper
execute if block ~ ~ ~ waxed_cut_copper_slab run setblock ~ ~ ~ cut_copper_slab
execute if block ~ ~ ~ waxed_cut_copper_stairs run setblock ~ ~ ~ cut_copper_stairs

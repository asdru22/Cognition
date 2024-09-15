particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
execute if block ~ ~ ~ waxed_weathered_chiseled_copper run setblock ~ ~ ~ weathered_chiseled_copper
execute if block ~ ~ ~ waxed_weathered_copper run setblock ~ ~ ~ weathered_copper
execute if block ~ ~ ~ waxed_weathered_copper_bulb run setblock ~ ~ ~ weathered_copper_bulb
execute if block ~ ~ ~ waxed_weathered_copper_door run setblock ~ ~ ~ weathered_copper_door
execute if block ~ ~ ~ waxed_weathered_copper_grate run setblock ~ ~ ~ weathered_copper_grate
execute if block ~ ~ ~ waxed_weathered_copper_trapdoor run setblock ~ ~ ~ weathered_copper_trapdoor
execute if block ~ ~ ~ waxed_weathered_cut_copper run setblock ~ ~ ~ weathered_cut_copper
execute if block ~ ~ ~ waxed_weathered_cut_copper_slab run setblock ~ ~ ~ weathered_cut_copper_slab
execute if block ~ ~ ~ waxed_weathered_cut_copper_stairs run setblock ~ ~ ~ weathered_cut_copper_stairs

particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
execute if block ~ ~ ~ waxed_oxidized_chiseled_copper run setblock ~ ~ ~ oxidized_chiseled_copper
execute if block ~ ~ ~ waxed_oxidized_copper run setblock ~ ~ ~ oxidized_copper
execute if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ oxidized_copper_bulb
execute if block ~ ~ ~ waxed_oxidized_copper_door run setblock ~ ~ ~ oxidized_copper_door
execute if block ~ ~ ~ waxed_oxidized_copper_grate run setblock ~ ~ ~ oxidized_copper_grate
execute if block ~ ~ ~ waxed_oxidized_copper_trapdoor run setblock ~ ~ ~ oxidized_copper_trapdoor
execute if block ~ ~ ~ waxed_oxidized_cut_copper run setblock ~ ~ ~ oxidized_cut_copper
execute if block ~ ~ ~ waxed_oxidized_cut_copper_slab run setblock ~ ~ ~ oxidized_cut_copper_slab
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs run setblock ~ ~ ~ oxidized_cut_copper_stairs

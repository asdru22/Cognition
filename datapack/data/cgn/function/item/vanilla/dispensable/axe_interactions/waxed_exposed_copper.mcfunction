particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
execute if block ~ ~ ~ waxed_exposed_chiseled_copper run setblock ~ ~ ~ exposed_chiseled_copper
execute if block ~ ~ ~ waxed_exposed_copper run setblock ~ ~ ~ exposed_copper
execute if block ~ ~ ~ waxed_exposed_copper_bulb run setblock ~ ~ ~ exposed_copper_bulb
execute if block ~ ~ ~ waxed_exposed_copper_door run setblock ~ ~ ~ exposed_copper_door
execute if block ~ ~ ~ waxed_exposed_copper_grate run setblock ~ ~ ~ exposed_copper_grate
execute if block ~ ~ ~ waxed_exposed_copper_trapdoor run setblock ~ ~ ~ exposed_copper_trapdoor
execute if block ~ ~ ~ waxed_exposed_cut_copper run setblock ~ ~ ~ exposed_cut_copper
execute if block ~ ~ ~ waxed_exposed_cut_copper_slab run setblock ~ ~ ~ exposed_cut_copper_slab
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs run setblock ~ ~ ~ exposed_cut_copper_stairs

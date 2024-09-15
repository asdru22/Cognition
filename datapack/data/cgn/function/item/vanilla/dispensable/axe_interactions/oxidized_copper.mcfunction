particle minecraft:scrape ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
loot spawn ~ ~ ~ loot cgn:items/malachite
execute if block ~ ~ ~ oxidized_chiseled_copper run setblock ~ ~ ~ weathered_chiseled_copper
execute if block ~ ~ ~ oxidized_copper run setblock ~ ~ ~ weathered_copper
execute if block ~ ~ ~ oxidized_copper_bulb run setblock ~ ~ ~ weathered_copper_bulb
execute if block ~ ~ ~ oxidized_copper_door run setblock ~ ~ ~ weathered_copper_door
execute if block ~ ~ ~ oxidized_copper_grate run setblock ~ ~ ~ weathered_copper_grate
execute if block ~ ~ ~ oxidized_copper_trapdoor run setblock ~ ~ ~ weathered_copper_trapdoor
execute if block ~ ~ ~ oxidized_cut_copper run setblock ~ ~ ~ weathered_cut_copper
execute if block ~ ~ ~ oxidized_cut_copper_slab run setblock ~ ~ ~ weathered_cut_copper_slab
execute if block ~ ~ ~ oxidized_cut_copper_stairs run setblock ~ ~ ~ weathered_cut_copper_stairs

tag @s add cgn.smoldering_vortex.triggered

item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":1}

execute if block ~ ~ ~ dropper[facing=north] run return run execute positioned ~ ~ ~-1 run function cgn:block/smoldering_vortex/trigger/summon_implosion
execute if block ~ ~ ~ dropper[facing=south] run return run execute positioned ~ ~ ~1 run function cgn:block/smoldering_vortex/trigger/summon_implosion

execute if block ~ ~ ~ dropper[facing=east] run return run execute positioned ~1 ~ ~ run function cgn:block/smoldering_vortex/trigger/summon_implosion
execute if block ~ ~ ~ dropper[facing=west] run return run execute positioned ~-1 ~ ~ run function cgn:block/smoldering_vortex/trigger/summon_implosion

execute if block ~ ~ ~ dropper[facing=down] run return run execute positioned ~ ~1 ~ run function cgn:block/smoldering_vortex/trigger/summon_implosion
execute if block ~ ~ ~ dropper[facing=up] run return run execute positioned ~ ~-1 ~ run function cgn:block/smoldering_vortex/trigger/summon_implosion
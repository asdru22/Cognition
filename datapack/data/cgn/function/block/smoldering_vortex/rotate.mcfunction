data merge entity @s {Tags:["cgn.tick","cgn.block","smithed.block","cgn.smoldering_vortex"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:dirt",count:1}}

execute if block ~ ~-1 ~ dropper[facing=north] run return run data merge entity @s {item:{components:{"minecraft:item_model":"cgn:block/smoldering_vortex/north"}}}

execute if block ~ ~-1 ~ dropper[facing=up] run return run data merge entity @s {item:{components:{"minecraft:item_model":"cgn:block/smoldering_vortex/up"}}}

execute if block ~ ~-1 ~ dropper[facing=down] run return run data merge entity @s {item:{components:{"minecraft:item_model":"cgn:block/smoldering_vortex/down"}}}

execute if block ~ ~-1 ~ dropper[facing=south] run return run data merge entity @s {item:{components:{"minecraft:item_model":"cgn:block/smoldering_vortex/south"}}}

execute if block ~ ~-1 ~ dropper[facing=west] run return run data merge entity @s {item:{components:{"minecraft:item_model":"cgn:block/smoldering_vortex/west"}}}

execute if block ~ ~-1 ~ dropper[facing=east] run return run data merge entity @s {item:{components:{"minecraft:item_model":"cgn:block/smoldering_vortex/east"}}}
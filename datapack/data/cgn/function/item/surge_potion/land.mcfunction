execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=item_display,tag=cgn.block.greek_fire,dx=0] at @s run function cgn:block/greek_fire/make_pyroplasm

execute if data storage cgn:storage root.temp.item{id:"minecraft:splash_potion"} run return run execute as @a[distance=..2] run function cgn:entity/player/electroplasm/add {amount:20}

execute summon area_effect_cloud run function cgn:item/surge_potion/lingering
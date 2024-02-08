execute if entity @s[tag=cgn.lingering_potion] as @a[dx=0] run function cgn:entity/player/electroplasm/add {amount:2}

execute if entity @s[type=#cgn:vanilla_modified,tag=!smithed.entity,tag=!cgn.entity] run function cgn:entity/processing/main
setblock ~ ~ ~ melon_stem[age=0]

summon interaction ~ ~ ~ {width:0.5f,height:0.2f,Tags:["smithed.block","cgn.midnight_rose","cgn.tick","cgn.block","cgn.interaction","cgn.midnight_rose_setup"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.2375f,0.f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"cgn:block/midnight_rose","custom_model_data":1}}}]}

execute as @n[type=interaction,tag=cgn.midnight_rose_setup,dx=0] run function cgn:block/midnight_rose/setup
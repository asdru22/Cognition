summon interaction ~ ~ ~ {width:0.5f,height:0.7f,Tags:["smithed.block","cgn.midnight_rose","cgn.tick","cgn.block","cgn.interaction","cgn.midnight_rose_setup","cgn.potted","cgn.10_seconds"],Passengers:[{id:"item_display",interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.1f,0.f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"cgn:block/midnight_rose","minecraft:custom_model_data":4}}}]}

execute as @n[type=interaction,tag=cgn.midnight_rose_setup,dx=0] run function cgn:block/midnight_rose/setup
setblock ~ ~-1 ~ minecraft:air

summon minecraft:item_display ~ ~ ~ {Tags:["cgn.block","cgn.tick","cgn.second","cgn.block.stygian_totem","smithed.entity","smithed.block","cgn.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:barrel",count:1,components:{"minecraft:custom_model_data":880000}},view_range:4.0f}
execute positioned ~ ~-1 ~ run function cgn:block/hopper_updating/fill
setblock ~ ~-1 ~ barrel{Lock:"§stygian_totem\\uF001",CustomName:'{"translate":"block.cgn.stygian_totem"}'}
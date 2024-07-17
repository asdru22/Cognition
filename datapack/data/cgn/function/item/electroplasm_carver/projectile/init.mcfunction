data merge entity @s {item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":880002}},teleport_duration:0,Tags:["cgn.tick","cgn.electroplasm_wave"],transformation:{translation:[0.0f,0.46f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},teleport_duration:1}

$data modify entity @s Rotation[0] set from entity $(out) Rotation[0]
$data modify entity @s item.tag.cgn.owner set value $(out)
execute store result entity @s item.components."minecraft:custom_data".cgn.damage int 0.1 run scoreboard players get #damage cgn.dummy

scoreboard players operation @s cgn.id = #temp cgn.dummy
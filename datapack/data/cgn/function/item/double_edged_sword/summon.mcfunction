$data merge entity @s {teleport_duration:2,Tags:["cgn.tick","cgn.projectile.double_edged_sword","cgn.projectile","cgn.projectile.no_timer"],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},Rotation:$(rotation)}

data modify entity @s item set from storage cgn:storage root.temp.item
$data modify entity @s item.components."minecraft:custom_data".cgn.owner set value $(owner)
data modify entity @s item.components."minecraft:custom_data".cgn.Slot set from storage cgn:storage root.temp.item.Slot
execute store result entity @s item.components."minecraft:custom_data".cgn.owner_id int 1 run scoreboard players operation @s cgn.id = #temp cgn.dummy

execute if score #gamemode cgn.dummy matches 0 run function cgn:technical/macros/damage_slot/main {slot:"container.0",amount:"1"}

execute if score #gamemode cgn.dummy matches 1 run tag @s add cgn.no_item_drop

execute if items entity @s container.0 netherite_sword[item_name='{"translate":"item.cgn.ebonite_sword"}'] run function cgn:item/double_edged_sword/interaction

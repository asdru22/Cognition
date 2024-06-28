data merge entity @s {teleport_duration:2,Tags:["cgn.tick","cgn.double_edged_sword"],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @s item set from storage srn:storage root.temp.item
data modify entity @s item.components."minecraft:custom_data".cgn.Slot set from storage srn:storage root.temp.item.Slot
execute store result entity @s item.components."minecraft:custom_data".cgn.owner int 1 run scoreboard players operation @s srn.id = #temp cgn.dummy
execute if score #gamemode cgn.dummy matches 0 run function srn:technical/macros/damage_slot/main {slot:"container.0",slot_raw:"item",amount:"1"}
execute if score #gamemode cgn.dummy matches 1 run tag @s add cgn.no_item_drop
tp @s ~ ~ ~ ~ ~
execute if items entity @s container.0 netherite_sword[item_name="{\"translate\":\"item.cgn.ebonite_sword\"}"] run function cgn:item/double_edged_sword/interaction
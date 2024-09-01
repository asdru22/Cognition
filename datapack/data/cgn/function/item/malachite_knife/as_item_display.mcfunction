$data merge entity @s {Rotation:$(rotation),teleport_duration:2,transformation:{left_rotation:[0f,-0.696f,0f,0.718f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
tag @s add cgn.tick
tag @s add cgn.projectile
tag @s add cgn.projectile.malachite_knife

data modify entity @s item set from storage cgn:storage root.temp.item

scoreboard players set @s cgn.animation_timer 2400

data modify entity @s item.components."minecraft:custom_data".cgn.owner set from storage cgn:storage root.temp.uuid.out
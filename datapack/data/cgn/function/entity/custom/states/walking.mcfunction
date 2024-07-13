scoreboard players set @s cgn.state 1
data modify storage cgn:storage root.temp.anim set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.animations[{anim:"walking"}]
item modify entity @s armor.head cgn:copy_cmd

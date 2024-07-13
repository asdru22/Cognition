data modify storage cgn:storage root.temp.anim set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.animations[{anim:"attack"}]

# set state
scoreboard players set @s cgn.state 2
# set timer
execute store result score @s cgn.animation_timer run data get storage cgn:storage root.temp.anim.duration
# reset animation
function cgn:entity/custom/reset_animation with storage cgn:storage root.temp.anim
# set cmd
item modify entity @s armor.head cgn:copy_cmd
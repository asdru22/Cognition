data merge entity @s {Invulnerable:1b,NoAI:1b}
data modify storage cgn:storage root.temp.death set from entity @s ArmorItems[3].components."minecraft:custom_data".srn.animations[{anim:"death"}]
data modify storage cgn:storage root.temp.death.id set from entity @s ArmorItems[3].components."minecraft:custom_data".srn.id

# set state
scoreboard players set @s cgn.state -1
# set timer
execute store result score @s cgn.animation_timer run data get storage cgn:storage root.temp.death.duration
# reset animation
function cgn:entity/custom/reset_animation with storage cgn:storage root.temp.death
# set cmd
item modify entity @s armor.head cgn:copy_cmd

function cgn:entity/custom/hurt/remove with entity @s ArmorItems[3].components."minecraft:dyed_color"
data merge entity @s {Invulnerable:1b,NoAI:1b}
data modify storage cgn:storage root.temp.anim set from entity @s ArmorItems[3].components."minecraft:custom_data".cgn.animations[{anim:"death"}]

# set state
scoreboard players set @s cgn.state -1
# set timer
execute store result score @s cgn.animation_timer run data get storage cgn:storage root.temp.anim.duration
# reset animation
function cgn:entity/custom/reset_animation with storage cgn:storage root.temp.anim
# set cmd
item modify entity @s armor.head cgn:copy_cmd

function cgn:entity/custom/hurt/remove with entity @s ArmorItems[3].components."minecraft:dyed_color"

$playsound cgn:entity.$(id).death hostile @a[distance=..16]

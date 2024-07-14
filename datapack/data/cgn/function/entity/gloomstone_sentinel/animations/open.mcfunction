scoreboard players set @s cgn.state 3
# set timer
scoreboard players set @s cgn.animation_timer 45
# reset animation
function cgn:entity/custom/reset_animation {duration:45}
# set cmd
item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","value":880003}

attribute @s generic.movement_speed base set -1000
attribute @s generic.armor base set 5

playsound cgn:entity.gloomstone_sentinel.open hostile @a[distance=..20]
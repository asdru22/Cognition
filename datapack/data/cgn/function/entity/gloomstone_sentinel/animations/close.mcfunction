# set timer
scoreboard players set @s cgn.animation_timer 40
# reset animation
function cgn:entity/custom/reset_animation {duration:40}
# set cmd
item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","value":880005}

scoreboard players set @s cgn.state 5

playsound cgn:entity.gloomstone_sentinel.close hostile @a[distance=..20]
tag @s remove cgn.projectile.double_edged_sword
tag @s add cgn.projectile.double_edged_sword_mace
particle minecraft:gust ~ ~ ~
playsound cgn:item.ebonite_sword.hit player @a[distance=..16] ~ ~ ~ 1 0.9

data merge entity @s {teleport_duration:1,transformation:{left_rotation:[-0.666f,0f,0f,0.746f],right_rotation:[0f,0f,-0.383f,0.924f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

execute on passengers run tag @s remove cgn.ebonite_sword_interaction

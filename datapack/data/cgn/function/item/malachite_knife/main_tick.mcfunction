tag @s add cgn.me

scoreboard players operation #temp cgn.dummy = @s cgn.dummy
scoreboard players operation #temp cgn.dummy %= #8 cgn.dummy

execute if score #temp cgn.dummy matches 0 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp cgn.dummy matches 2 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-1.57079632679f}}}
execute if score #temp cgn.dummy matches 4 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-3.141f}}}
execute if score #temp cgn.dummy matches 6 run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-4.71238898038f}}}

scoreboard players add @s cgn.dummy 1

scoreboard players set @s cgn.dummy2 20
function cgn:item/malachite_knife/move_loop

execute store result storage cgn:macro root.y double 0.05 run scoreboard players get @s cgn.dummy
execute if entity @s[tag=!cgn.malachite_knife.in_ground] run function cgn:item/malachite_knife/y_offset with storage cgn:macro root

tag @s remove cgn.me
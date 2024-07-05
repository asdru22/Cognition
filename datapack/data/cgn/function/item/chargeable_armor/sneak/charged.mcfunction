playsound minecraft:block.note_block.chime player @s ~ ~ ~ 2 0.2
particle flash ~ ~1 ~

tag @s add cgn.chargeable_armor.jump

attribute @s minecraft:generic.jump_strength modifier add cgn:chargeable_armor_jump_strength 1 add_value
attribute @s generic.jump_strength modifier remove cgn:chargeable_armor_no_jump

execute if entity @s[gamemode=!creative] run function cgn:item/chargeable_armor/modify/init
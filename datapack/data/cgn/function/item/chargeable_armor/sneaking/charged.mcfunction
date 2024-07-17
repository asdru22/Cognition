playsound minecraft:block.note_block.chime player @s ~ ~ ~ 2 0.2
particle flash ~ ~1 ~

tag @s add cgn.chargeable_armor.charged

attribute @s generic.jump_strength modifier remove cgn:charged_armor.charging
attribute @s generic.jump_strength modifier add cgn:charged_armor.charged 1.5 add_value
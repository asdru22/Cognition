playsound minecraft:block.note_block.chime player @s ~ ~ ~ 2 0.2
particle flash ~ ~1 ~

tag @s add cgn.chargeable_armor.jump

attribute @s minecraft:generic.jump_strength modifier add 5615aea3-7dfd-4ed4-99fe-08a93b9c2bc2 "cgn.chargeable_armor" 1 add
attribute @s generic.jump_strength modifier remove a3b56875-068e-4ca4-9eb4-4c4b4523416c

execute if entity @s[gamemode=!creative] run function cgn:item/chargeable_armor/modify_armor/init
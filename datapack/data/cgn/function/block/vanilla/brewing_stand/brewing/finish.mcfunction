############################################################
# Functions to run off of brewing stand markers every second
############################################################

execute if data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_fungus_on_a_stick"}] run function cgn:block/vanilla/brewing_stand/brewing/modify_items/slot_0
execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:warped_fungus_on_a_stick"}] run function cgn:block/vanilla/brewing_stand/brewing/modify_items/slot_1
execute if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:warped_fungus_on_a_stick"}] run function cgn:block/vanilla/brewing_stand/brewing/modify_items/slot_2

data modify block ~ ~ ~ BrewTime set value 0s
scoreboard players reset @s cgn.dummy2
item modify block ~ ~ ~ container.3 cgn:decrease_count
playsound minecraft:block.brewing_stand.brew block @a[distance=..16]
function #cgn:item/usable/tick

execute if score @s cgn.using_item = @s cgn.using_item_new run function cgn:item/usable/release

scoreboard players operation @s cgn.using_item_new = @s cgn.using_item

execute if score @s cgn.using_item matches 1 run function cgn:item/usable/use
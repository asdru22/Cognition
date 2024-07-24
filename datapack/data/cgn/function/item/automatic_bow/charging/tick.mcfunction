data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.automatic_bow"}'}}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",components:{"minecraft:item_name":'{"translate":"item.cgn.automatic_bow"}'}}


scoreboard players operation #temp cgn.dummy = @s cgn.using_item
scoreboard players operation #temp cgn.dummy %= #10 cgn.dummy

execute if score #temp cgn.dummy matches 2 run function cgn:item/automatic_bow/charging/change_model {model:880012}
execute if score #temp cgn.dummy matches 5 run function cgn:item/automatic_bow/charging/change_model {model:880013}
execute if score #temp cgn.dummy matches 8 run function cgn:item/automatic_bow/charging/change_model {model:880014}
execute if score #temp cgn.dummy matches 0 run function cgn:item/automatic_bow/charging/change_model {model:880011}

execute if score @s cgn.using_item matches 10.. if score #temp cgn.dummy matches 0 run function cgn:item/automatic_bow/init
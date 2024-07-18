data modify storage cgn:storage root.temp.inv set from entity @s Inventory
execute positioned ~ 1000 ~ summon item_display run function cgn:item/automatic_bow/track_slots/main

execute if score $creative cgn.dummy matches 1 unless data storage cgn:storage root.temp.ammo run data modify storage cgn:storage root.temp.ammo set value {id:"minecraft:arrow",count:1,Slot:-1b}

execute if data storage cgn:storage root.temp.ammo run function cgn:item/automatic_bow/shoot

execute if score $creative cgn.dummy matches 0 run function cgn:item/warped_fungus_on_a_stick/damage
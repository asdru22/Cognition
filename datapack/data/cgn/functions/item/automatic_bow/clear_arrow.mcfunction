execute if data storage cgn:storage root.temp.ammo{Slot:-106b} run item modify entity @s weapon.offhand srn:decrease_count/1
execute unless data storage cgn:storage root.temp.ammo{Slot:-106b} run function cgn:item/automatic_bow/track_slots/remove_1 with storage cgn:storage root.temp.ammo
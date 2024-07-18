data merge entity @s {damage:1}
data modify entity @s Owner set from storage cgn:storage root.temp.uuid
data modify entity @s Motion set from storage cgn:storage root.temp.motion
execute if data storage cgn:storage root.temp.ammo.components."minecraft:potion_contents" run function cgn:item/automatic_bow/tipped_arrow


execute if score $creative cgn.dummy matches 1 run data merge entity @s {pickup:2b}
execute if score $creative cgn.dummy matches 0 run data merge entity @s {pickup:1b}
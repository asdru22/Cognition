data merge entity @s {damage:1,pickup:1b}
data modify entity @s Owner set from storage cgn:storage root.temp.uuid
data modify entity @s Motion set from storage srn:storage root.temp.components
data modify entity @s potion_contents set from storage cgn:storage root.temp.ammo.potion_contents
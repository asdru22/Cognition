data modify storage cgn:storage root.temp.next_proj set from storage cgn:storage root.temp.item.tag.cgn.stored_projectiles[-1]

data modify storage cgn:storage root.temp.item.tag.Charged set value 1b

execute if data storage cgn:storage root.temp.next_proj{id:"arrow"} run data modify storage cgn:storage root.temp.item.tag.CustomModelData set value 880000
execute if data storage cgn:storage root.temp.next_proj{id:"tipped_arrow"} run data modify storage cgn:storage root.temp.item.tag.CustomModelData set value 880000
execute if data storage cgn:storage root.temp.next_proj{id:"spectral_arrow"} run data modify storage cgn:storage root.temp.item.tag.CustomModelData set value 880001
execute if data storage cgn:storage root.temp.next_proj{id:"firework_rocket"} run data modify storage cgn:storage root.temp.item.tag.CustomModelData set value 880002

data modify storage cgn:storage root.temp.item.tag.ChargedProjectiles set value []
data modify storage cgn:storage root.temp.item.tag.ChargedProjectiles insert -1 from storage cgn:storage root.temp.next_proj
execute if data storage cgn:storage root.temp.item.tag.Enchantments[{id:"minecraft:multishot"}] run function cgn:item/windup_crossbow/use/multishot
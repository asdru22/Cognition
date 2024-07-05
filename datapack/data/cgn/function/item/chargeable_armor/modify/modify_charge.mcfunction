execute store result storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.charge.amount int 0.99 run data get storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.charge.amount

function cgn:item/chargeable_armor/modify/lore with storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.charge

execute if data storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.charge{amount:0} run function cgn:item/chargeable_armor/modify/remove_charge
$loot replace block ~ ~ ~ container.16 loot cgn:items/ebonite_$(id)

data remove storage cgn:storage root.temp.macro.item.components."minecraft:custom_model_data"
data remove storage cgn:storage root.temp.macro.item.components."minectaft:custom_data".cgn
data remove storage cgn:storage root.temp.macro.item.components."minecraft:lore"

data modify block ~ ~ ~ Items[{Slot:16b}].components merge from storage cgn:storage root.temp.macro.item.components
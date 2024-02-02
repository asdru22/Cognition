$loot replace block ~ ~ ~ container.16 loot cgn:items/ebonite_$(id)

data remove storage cgn:storage root.temp.item.tag.CustomModelData
data remove storage cgn:storage root.temp.item.tag.cgn
data remove storage cgn:storage root.temp.item.tag.display.Lore

data modify block ~ ~ ~ Items[{Slot:16b}].tag merge from storage cgn:storage root.temp.item.tag
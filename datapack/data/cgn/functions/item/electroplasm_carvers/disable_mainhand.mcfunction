data modify storage cgn:storage root.temp.item set from entity @s Inventory[{tag:{cgn:{electroplasm_carvers:"mainhand"}}}]

data modify storage cgn:storage root.temp.item.tag.AttributeModifiers set value [{}]
data modify storage cgn:storage root.temp.item.tag.CustomModelData set value 880002
data remove storage cgn:storage root.temp.item.tag.srn.durability.damage_on_hit
data remove storage cgn:storage root.temp.item.tag.cgn.electroplasm_carvers

function cgn:item/electroplasm_carvers/replace_slot with storage cgn:storage root.temp.item
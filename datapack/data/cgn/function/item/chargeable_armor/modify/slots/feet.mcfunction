data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:100b}]
data modify storage cgn:storage root.temp.item.slot set value "armor.feet"

function cgn:item/chargeable_armor/modify/main
function srn:technical/macros/loot/replace with storage cgn:storage root.temp.item
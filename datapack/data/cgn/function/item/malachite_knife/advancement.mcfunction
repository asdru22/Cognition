advancement revoke @s only cgn:technical/consume_item/malachite_knife
data remove storage cgn:storage root.temp.item

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite_knife"}'] run data modify storage cgn:storage root.temp.item set from entity @s SelectedItem
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite_knife"}'] run data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]

function cgn:technical/string_uuid/init

data remove storage cgn:macro root
data modify storage cgn:macro root.rotation set from entity @s Rotation

data modify storage cgn:storage root.temp.array_uuid set from entity @s UUID




execute anchored eyes positioned ^ ^ ^ summon item_display run function cgn:item/malachite_knife/as_item_display with storage cgn:macro root
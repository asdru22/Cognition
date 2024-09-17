advancement revoke @s only cgn:technical/consume_item/double_edged_sword
data remove storage cgn:storage root.temp.item

execute if items entity @s weapon.offhand #minecraft:swords[minecraft:custom_data~{cgn:{double_edged_sword:1b}}] run data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute if items entity @s weapon.mainhand #minecraft:swords[minecraft:custom_data~{cgn:{double_edged_sword:1b}}] run data modify storage cgn:storage root.temp.item set from entity @s SelectedItem

data remove storage cgn:macro root
data modify storage cgn:macro root.rotation set from entity @s Rotation

data modify storage cgn:storage root.temp.uuid set from entity @s UUID

execute anchored eyes positioned ^ ^ ^ summon item_display run function cgn:item/double_edged_sword/as_item_display with storage cgn:macro root
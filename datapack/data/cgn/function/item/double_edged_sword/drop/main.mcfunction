data remove storage cgn:macro root
data modify storage cgn:macro root.item set from entity @s item
data remove storage cgn:macro root.item.components."minecraft:custom_data".cgn.owner
data remove storage cgn:macro root.item.components."minecraft:custom_data".cgn.uuid
data modify storage cgn:macro root.item.Slot set from storage cgn:macro root.item.components."minecraft:custom_data".cgn.Slot
data remove storage cgn:macro root.item.components."minecraft:custom_data".cgn.Slot
kill

$execute as @p[nbt={UUID:$(owner)}] run function cgn:item/double_edged_sword/drop/check_slots
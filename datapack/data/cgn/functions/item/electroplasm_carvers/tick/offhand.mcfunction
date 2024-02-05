clear @s warped_fungus_on_a_stick{cgn:{electroplasm_carvers:"offhand"}}
kill @e[type=item,distance=..2,nbt={Item:{tag:{cgn:{electroplasm_carvers:"offhand"}}}}]
execute unless predicate cgn:entity/holding/offhand run function cgn:item/electroplasm_carvers/offhand_item/main
loot replace entity @s weapon.offhand loot cgn:items/electroplasm_carvers_offhand
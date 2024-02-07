data remove storage cgn:storage root.temp.item
execute if predicate cgn:entity/wearing/chargeable_armor/helmet run function cgn:item/chargeable_armor/modify/slots/head

data remove storage cgn:storage root.temp.item
execute if predicate cgn:entity/wearing/chargeable_armor/chestplate run function cgn:item/chargeable_armor/modify/slots/chest

data remove storage cgn:storage root.temp.item
execute if predicate cgn:entity/wearing/chargeable_armor/leggings run function cgn:item/chargeable_armor/modify/slots/legs

data remove storage cgn:storage root.temp.item
execute if predicate cgn:entity/wearing/chargeable_armor/boots run function cgn:item/chargeable_armor/modify/slots/feet

stopsound @s * item.armor.equip_leather
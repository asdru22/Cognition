execute if predicate cgn:entity/wearing/chargeable_armor/boots run function cgn:item/chargeable_armor/modify/slots/feet
execute if predicate cgn:entity/wearing/chargeable_armor/leggings run function cgn:item/chargeable_armor/modify/slots/legs
execute if predicate cgn:entity/wearing/chargeable_armor/chestplate run function cgn:item/chargeable_armor/modify/slots/chest
execute if predicate cgn:entity/wearing/chargeable_armor/helmet run function cgn:item/chargeable_armor/modify/slots/head

execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/struck_by_lightning/lightning
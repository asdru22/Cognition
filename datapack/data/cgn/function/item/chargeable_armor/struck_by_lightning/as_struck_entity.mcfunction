execute if predicate cgn:entity_properties/chargeable_armor/boots run function cgn:item/chargeable_armor/modify/charge {slot:"feet",armor:"boots"}
execute if predicate cgn:entity_properties/chargeable_armor/leggings run function cgn:item/chargeable_armor/modify/charge {slot:"legs",armor:"leggings"}
execute if predicate cgn:entity_properties/chargeable_armor/chestplate run function cgn:item/chargeable_armor/modify/charge {slot:"chest",armor:"chestplate"}
execute if predicate cgn:entity_properties/chargeable_armor/helmet run function cgn:item/chargeable_armor/modify/charge {slot:"head",armor:"helmet"}

execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/struck_by_lightning/lightning
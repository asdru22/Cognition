scoreboard players set @s cgn.electroplasm.max 50

execute if predicate cgn:item/shockweave_armor/helmet run scoreboard players add @s cgn.electroplasm.max 5
execute if predicate cgn:item/shockweave_armor/chestplate run scoreboard players add @s cgn.electroplasm.max 15
execute if predicate cgn:item/shockweave_armor/leggings run scoreboard players add @s cgn.electroplasm.max 10
execute if predicate cgn:item/shockweave_armor/boots run scoreboard players add @s cgn.electroplasm.max 5

execute if predicate cgn:item/shockweave_armor/all run scoreboard players add @s cgn.electroplasm.max 5

scoreboard players operation @s cgn.electroplasm.current < @s cgn.electroplasm.max
advancement revoke @s only cgn:technical/inventory_changed/generic
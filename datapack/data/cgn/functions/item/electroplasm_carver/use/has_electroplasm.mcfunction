function srn:technical/string_uuid/init
scoreboard players operation #temp cgn.dummy = @s srn.id
scoreboard players operation #damage cgn.dummy = @s cgn.electroplasm_carver.damage
scoreboard players operation #damage cgn.dummy > #10 cgn.dummy
execute anchored feet rotated ~ 0 positioned ~ ~.2 ~ summon item_display run function cgn:item/electroplasm_carver/projectile/init with storage srn:storage root.temp

scoreboard players remove @s cgn.electroplasm.current 10
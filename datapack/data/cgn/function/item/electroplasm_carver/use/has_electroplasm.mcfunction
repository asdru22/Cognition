function cgn:technical/string_uuid/init
scoreboard players operation #temp cgn.dummy = @s cgn.id
scoreboard players operation #damage cgn.dummy = @s cgn.electroplasm_carver.damage
scoreboard players operation #damage cgn.dummy > #10 cgn.dummy
execute anchored feet rotated ~ 0 positioned ~ ~.2 ~ summon item_display run function cgn:entity/projectile/electroplasm_wave/summon with storage cgn:storage root.temp.uuid

scoreboard players remove @s[gamemode=!creative] cgn.electroplasm.current 10

playsound cgn:entity.electroplasm_wave.cast player @a[distance=..16] ~ ~ ~ 0.2 1
tag @s remove cgn.me
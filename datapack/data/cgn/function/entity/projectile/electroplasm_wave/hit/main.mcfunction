execute if entity @s[type=player] unless score @s cgn.id = $temp_id cgn.dummy run return run function cgn:entity/projectile/electroplasm_wave/hit/damage

execute if entity @s[type=!player] run function cgn:entity/projectile/electroplasm_wave/hit/damage
function cgn:entity/projectile/electroplasm_wave/hit/apply_damage with entity @e[type=item_display,tag=cgn.projectile.electroplasm_wave,distance=..0.01,limit=1,sort=nearest] item.components."minecraft:custom_data".cgn
#tellraw @p {"entity":"@e[type=item_display,tag=cgn.projectile.electroplasm_wave,distance=..0.01,limit=1,sort=nearest]","nbt":"item.components.\"minecraft:custom_data\".cgn"}
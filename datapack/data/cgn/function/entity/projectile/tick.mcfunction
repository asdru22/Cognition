scoreboard players remove @s cgn.animation_timer 1
kill @s[tag=!cgn.projectile.no_timer,scores={cgn.animation_timer=..0}] 
execute if entity @s[tag=cgn.projectile.gloomstone_beam] run return run function cgn:entity/projectile/gloomstone_beam/tick
execute if entity @s[tag=cgn.projectile.electroplasm_wave] run return run function cgn:entity/projectile/electroplasm_wave/tick

execute if entity @s[tag=cgn.projectile.thrown_potion,predicate=!cgn:entity_properties/has_vehicle] run return run function cgn:entity/projectile/thrown_potion

execute if entity @s[tag=cgn.projectile.double_edged_sword] run return run function cgn:item/double_edged_sword/tick/main

execute if entity @s[tag=cgn.projectile.double_edged_sword_mace] run return run function cgn:item/ebonite_sword/mace/tick

execute if entity @s[type=#arrows] run return run function cgn:entity/projectile/arrow/tick

execute if entity @s[tag=cgn.projectile.malachite_knife] run return run function cgn:item/malachite_knife/tick

scoreboard players remove @s cgn.animation_timer 1

execute if entity @s[tag=cgn.projectile.gloomstone_beam] run function cgn:entity/projectile/gloomstone_beam/tick
execute if entity @s[tag=cgn.projectile.electroplasm_wave] run function cgn:entity/projectile/electroplasm_wave/tick

execute if entity @s[tag=cgn.projectile.thrown_potion,predicate=!cgn:entity_properties/has_vehicle] run function cgn:entity/projectile/thrown_potion

execute if entity @s[tag=cgn.projectile.double_edged_sword] run function cgn:item/double_edged_sword/tick/main

execute if entity @s[tag=cgn.projectile.double_edged_sword_mace] run function cgn:item/ebonite_sword/mace/tick


kill @s[tag=!cgn.projectile.no_timer,scores={cgn.animation_timer=..0}]
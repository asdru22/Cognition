execute if entity @a[predicate=cgn:entity_properties/targeted_by_mobs,distance=..5] run return run function cgn:entity/gloomstone_sentinel/animations/close

execute if entity @s[scores={cgn.animation_timer=0}] if entity @n[predicate=cgn:entity_properties/targeted_by_mobs,distance=5..20] run function cgn:entity/gloomstone_sentinel/open/prepare_attack
execute if predicate cgn:random_chance/1_10 run playsound cgn:entity.gloomstone_sentinel.open_idle hostile @a[distance=..15]
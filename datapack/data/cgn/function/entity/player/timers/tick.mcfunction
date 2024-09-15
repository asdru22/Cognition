# usable item
execute if entity @s[scores={cgn.using_item=1..}] run function cgn:item/vanilla/usable/tick

# shoot ranged weapon
execute if entity @s[predicate=cgn:entity_properties/used_ranged_weapon] run function cgn:entity/player/scores/use_ranged_weapon

# click wofas
execute if entity @s[scores={cgn.used_warped_fungus_on_a_stick=1..}] run function cgn:item/vanilla/warped_fungus_on_a_stick/use

execute if entity @s[tag=cgn.player_in_bubble,predicate=!cgn:entity_properties/has_vehicle] run function cgn:entity/bubble/passenger_tick
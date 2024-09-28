# usable item
execute if entity @s[scores={cgn.using_item=1..}] run function cgn:item/vanilla/usable/tick

# shoot ranged weapon
execute if entity @s[predicate=cgn:entity_properties/used_ranged_weapon] run function cgn:entity/player/scores/use_ranged_weapon

# click wofas
execute if entity @s[scores={cgn.used_warped_fungus_on_a_stick=1..}] run function cgn:item/vanilla/warped_fungus_on_a_stick/use

# chargeable armor
execute if entity @s[scores={cgn.sneak_time=1..}] run function cgn:entity/player/scores/sneak_time
execute if entity @s[scores={cgn.air_time=1..}] run function cgn:item/chargeable_armor/in_air/tick
execute if entity @s[tag=cgn.chargeable_armor.charged,predicate=cgn:entity_properties/player_input/jump_button] run function cgn:item/chargeable_armor/charged_jump

# malachite drop
execute if entity @s[advancements={cgn:technical/item_used_on_block/scrape_oxidation=true}] run function cgn:item/malachite/advancement
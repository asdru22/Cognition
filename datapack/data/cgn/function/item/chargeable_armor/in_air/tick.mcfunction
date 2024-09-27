execute if entity @s[nbt={OnGround:1b}] run return run function cgn:item/chargeable_armor/in_air/land

scoreboard players add @s cgn.air_time 1

execute if entity @s[predicate=cgn:entity_properties/player_input/sneak_button,tag=!cgn.chargeable_armor.launch,nbt=!{FallDistance:0.0f}] run function cgn:item/chargeable_armor/in_air/launch_player

execute if entity @s[tag=cgn.chargeable_armor.launch] run function cgn:item/chargeable_armor/in_air/launch_effect_rng
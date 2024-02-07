scoreboard players add @s cgn.air_time 1

execute if entity @s[nbt={OnGround:1b}] run function cgn:item/chargeable_armor/in_air/land

execute if entity @s[predicate=cgn:player/sneaking,tag=!cgn.chargeable_armor.launch] run function cgn:item/chargeable_armor/in_air/launch_player

execute if entity @s[tag=cgn.chargeable_armor.launch] run function cgn:item/chargeable_armor/in_air/launch_effect_rng
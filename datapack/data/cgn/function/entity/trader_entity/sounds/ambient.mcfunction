# Plays ambient noises based on which mob it is

execute if entity @s[tag=cgn.enchanter] run playsound cgn:entity.enchanter.ambient hostile @a[distance=..16]
execute if entity @s[tag=cgn.iceologer] run playsound cgn:entity.iceologer.ambient hostile @a[distance=..16]
execute if entity @s[tag=cgn.geomancer] run playsound cgn:entity.geomancer.ambient hostile @a[distance=..16]
execute if entity @s[tag=cgn.snail,tag=cgn.snail.gary] run playsound cgn:entity.snail.gary_meow neutral @a[distance=..16]
execute if entity @s[tag=cgn.wandering_witch] run playsound cgn:entity.wandering_witch.ambient neutral @a[distance=..16]
execute if entity @s[tag=cgn.sprouter,tag=!cgn.baby] run playsound cgn:entity.sprouter.ambient neutral @a[distance=..16]
execute if entity @s[tag=cgn.sprouter,tag=cgn.baby] run playsound cgn:entity.sprouter.ambient neutral @a[distance=..16] ~ ~ ~ 1 1.5
# Plays hurt noises based on which mob it is

execute if entity @s[tag=cgn.enchanter] run playsound cgn:entity.enchanter.hurt hostile @a[distance=..16]
execute if entity @s[tag=cgn.iceologer] run playsound cgn:entity.iceologer.hurt hostile @a[distance=..16]
execute if entity @s[tag=cgn.geomancer] run playsound cgn:entity.geomancer.hurt hostile @a[distance=..16]
execute if entity @s[tag=cgn.snail] run playsound cgn:entity.snail.hurt neutral @a[distance=..16]
execute if entity @s[tag=cgn.wandering_witch] run playsound cgn:entity.wandering_witch.hurt neutral @a[distance=..16]
execute if entity @s[tag=cgn.sprouter,tag=!cgn.baby] run playsound cgn:entity.sprouter.hurt neutral @a[distance=..16]
execute if entity @s[tag=cgn.sprouter,tag=cgn.baby] run playsound cgn:entity.sprouter.hurt neutral @a[distance=..16] ~ ~ ~ 1 1.5

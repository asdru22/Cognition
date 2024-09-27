# Plays death noises based on which mob it is

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"enchanter"}}}}}] run playsound cgn:entity.enchanter.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"iceologer"}}}}}] run playsound cgn:entity.iceologer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"geomancer"}}}}}] run playsound cgn:entity.geomancer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"wandering_witch"}}}}}] run playsound cgn:entity.wandering_witch.death neutral @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"sprouter"}}}}}] run playsound cgn:entity.sprouter.death neutral @a[distance=..16]
execute unless entity @s[nbt=!{Item:{components:{"minecraft:custom_data":{cgn:{entity:"snail"}}}}},tag=!cgn.snail] run playsound cgn:entity.snail.hurt neutral @a[distance=..16]

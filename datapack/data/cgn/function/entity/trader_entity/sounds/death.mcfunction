# Plays death noises based on which mob it is


execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"iceologer"}}}}}] run playsound cgn:entity.iceologer.death hostile @a[distance=..16]

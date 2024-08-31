data merge entity @s {Fire:40s}
execute if entity @s[type=!#cgn:inanimate,nbt={HurtTime:0s}] run return run damage @s 2 in_fire
execute if entity @s[type=#cgn:inanimate] run damage @s 2 in_fire
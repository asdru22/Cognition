execute on passengers run kill @s

particle item item_frame{CustomModelData:880003} ~ ~ ~ 0.33 0.33 0.33 0.1 5

loot spawn ~ ~ ~ loot cgn:items/wispthorn

playsound minecraft:block.pink_petals.break block @a[distance=..16]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ air
kill @s
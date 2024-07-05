execute store result score $temp cgn.dummy run data get entity @s Item.count
kill @s
loot spawn ~ ~ ~ loot cgn:technical/count/ebonite_ingot

advancement grant @a[tag=cgn.me] only cgn:gameplay/make_ebonite
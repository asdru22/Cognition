scoreboard players set #loop cgn.dummy 14
$execute rotated ~$(yaw) ~$(pitch) run function cgn:particle/lightning/init

execute store result storage cgn:storage root.temp.rng.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.rng.pitch int 1 run random value -85..-10
scoreboard players remove #iter cgn.dummy 1
execute if score #iter cgn.dummy matches 1.. run function cgn:item/enchantments/pulse/effect/main with storage cgn:storage root.temp.rng

tag @s add cgn.me
execute as @e[type=!#cgn:inanimate,distance=..10] run function cgn:item/enchantments/pulse/effect/damage
tag @s remove cgn.me

playsound cgn:item.chargeable_armor.land player @a[distance=..16]
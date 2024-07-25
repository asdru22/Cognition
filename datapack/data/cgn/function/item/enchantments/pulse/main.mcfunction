scoreboard players set #iter cgn.dummy 10
scoreboard players set #effect cgn.dummy 5

execute store result storage cgn:storage root.temp.rng.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.rng.pitch int 1 run random value -85..-10

function cgn:item/enchantments/pulse/effect/main with storage cgn:storage root.temp.rng

particle minecraft:flash ~ ~ ~

execute if entity @s[gamemode=!creative] run function cgn:item/chargeable_armor/modify/use

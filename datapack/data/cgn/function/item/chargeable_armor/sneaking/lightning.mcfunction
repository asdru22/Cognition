playsound entity.lightning_bolt.impact player @a[distance=..16] ~ ~ ~ 0.2 1.5
data remove storage cgn:storage root.temp.macro
execute store result storage cgn:storage root.temp.macro.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.macro.pitch int 1 run random value -90..90
execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/sneaking/particle with storage cgn:storage root.temp.macro
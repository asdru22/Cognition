execute store result storage cgn:storage root.temp.rng.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.rng.pitch int 1 run random value -90..0
execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/sneak/effect with storage cgn:storage root.temp.rng
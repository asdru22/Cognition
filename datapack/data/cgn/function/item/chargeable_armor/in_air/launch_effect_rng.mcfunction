execute store result storage cgn:storage root.temp.macro.yaw int 1 run random value -180..180
execute store result storage cgn:storage root.temp.macro.pitch int 1 run random value -90..90
execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/in_air/launch_lightning with storage cgn:storage root.temp.macro
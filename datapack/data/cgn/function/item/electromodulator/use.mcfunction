execute if entity @s[gamemode=!creative] run function srn:item/warped_fungus_on_a_stick/damage
scoreboard players remove @s[gamemode=!creative] cgn.electroplasm.current 50
function cgn:item/chargeable_armor/modify/init

execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/struck_by_lightning/lightning

playsound cgn:item.electromodulator.use master @a[distance=..16]
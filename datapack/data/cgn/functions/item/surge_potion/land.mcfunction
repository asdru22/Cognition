data modify storage cgn:storage root.temp.potion set from entity @s data
execute if data storage cgn:storage root.temp.potion{id:"minecraft:splash_potion"} run function cgn:item/surge_potion/splash_potion
execute if data storage cgn:storage root.temp.potion{id:"minecraft:lingering_potion"} summon area_effect_cloud run function cgn:item/surge_potion/lingering_potion
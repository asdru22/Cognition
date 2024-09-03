data modify storage cgn:storage root.temp.potion.id set from entity @s Item.id
data modify storage cgn:storage root.temp.potion.color set from entity @s Item.components."minecraft:potion_contents".custom_color
data modify storage cgn:storage root.temp.potion.potion set from entity @s Item.components."minecraft:custom_data".cgn.potion.id

data remove storage cgn:storage root.temp.uuid
function cgn:technical/string_uuid/init

execute summon marker run function cgn:item/throwable_potion/as_marker with storage cgn:storage root.temp.uuid
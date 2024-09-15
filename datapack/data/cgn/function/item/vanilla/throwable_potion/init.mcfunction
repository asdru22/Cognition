data modify storage cgn:storage root.temp.uuid.out set value 0-
execute on origin run function cgn:technical/string_uuid/init

data modify storage cgn:storage root.temp.potion set value {}
data modify storage cgn:storage root.temp.potion.owner set from storage cgn:storage root.temp.uuid.out

function cgn:item/vanilla/throwable_potion/as_potion
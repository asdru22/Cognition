data modify storage cgn:storage root.temp.uuid.out set value 0-

data modify storage cgn:storage root.temp.potion set value {}
data modify storage cgn:storage root.temp.potion.owner set from entity @s UUID

function cgn:item/vanilla/throwable_potion/as_potion
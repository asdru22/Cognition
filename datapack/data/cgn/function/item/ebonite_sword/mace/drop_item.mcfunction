data modify storage cgn:storage root.temp.item set from entity @s item
function cgn:technical/macros/loot/spawn with storage cgn:storage root.temp.item

execute on passengers run kill
kill
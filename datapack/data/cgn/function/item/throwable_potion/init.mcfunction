data modify storage cgn:storage root.temp.potion set value {}
function cgn:technical/string_uuid/init
data modify storage cgn:storage root.temp.potion.owner set from storage cgn:storage root.temp.uuid.out

execute as @e[type=potion,sort=nearest,limit=1,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{cgn:{id:"potion"}}}}}] unless predicate cgn:entity_properties/has_passenger at @s run function cgn:item/throwable_potion/as_potion
scoreboard players reset @s cgn.throw_lingering_potion
scoreboard players reset @s cgn.throw_splash_potion
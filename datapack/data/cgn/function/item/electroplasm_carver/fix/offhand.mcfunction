data modify storage cgn:storage root.temp.macro set from entity @s Inventory[{Slot:-106b}]
data modify storage cgn:storage root.temp.macro.slot set value "weapon.offhand"

data modify storage cgn:storage root.temp.macro.id set value "minecraft:fishing_rod"

function cgn:technical/macros/loot/replace with storage cgn:storage root.temp.macro
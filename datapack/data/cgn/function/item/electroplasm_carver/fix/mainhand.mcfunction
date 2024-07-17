data modify storage cgn:storage root.temp.macro set value {slot:"weapon.mainhand"}
data modify storage cgn:storage root.temp.macro set from entity @s SelectedItem
data modify storage cgn:storage root.temp.macro.id set value "minecraft:diamond_sword"

function cgn:technical/macros/loot/replace with storage cgn:storage root.temp.macro
data modify storage cgn:storage root.temp.inv set from entity @s Inventory
data remove storage cgn:storage root.temp.inv[{Slot:100b}]
data remove storage cgn:storage root.temp.inv[{Slot:101b}]
data remove storage cgn:storage root.temp.inv[{Slot:102b}]
data remove storage cgn:storage root.temp.inv[{Slot:103b}]
data remove storage cgn:storage root.temp.inv[{Slot:-106b}]
execute store result score #temp cgn.dummy if data storage cgn:storage root.temp.inv[]

execute unless score #temp cgn.dummy matches 36 run function cgn:technical/macros/loot/give with storage cgn:storage root.temp.item
execute if score #temp cgn.dummy matches 36 run function cgn:technical/macros/loot/spawn with storage cgn:storage root.temp.item
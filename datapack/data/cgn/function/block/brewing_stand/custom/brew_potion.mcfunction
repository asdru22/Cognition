data modify storage cgn:storage root.temp.item.components."minecraft:lore" set value []

execute if data storage cgn:storage root.temp.ingredient.components{"minecraft:item_name":'{"translate":"item.cgn.electroplasm"}'} if data storage cgn:storage root.temp.item.components."minecraft:potion_contents"{potion:"minecraft:awkward"} run function cgn:block/brewing_stand/custom/brew/surge

data modify storage cgn:storage root.temp.item.components."minecraft:lore" insert -1 value '""'
data modify storage cgn:storage root.temp.item.components."minecraft:lore" insert -1 value '{"translate":"cgn.tooltip","with":[{"translate":"pack.cgn","font":"minecraft:default","italic":true,"color":"#F6E79C"}],"font":"cgn:main","italic":false,"color":"white"}'
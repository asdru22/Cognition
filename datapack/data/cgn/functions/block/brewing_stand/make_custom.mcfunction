data modify storage srn:storage root.temp.item.tag.display.Lore set value []

execute if data storage srn:storage root.temp.ingredient.tag.cgn{id:"electroplasm"} if data storage srn:storage root.temp.item.tag{Potion:"minecraft:awkward"} run function cgn:block/brewing_stand/brew/surge

data modify storage srn:storage root.temp.item.tag.display.Lore insert -1 value '{"translate":"cgn.tooltip","with":[{"translate":"pack.cgn","font":"minecraft:default","italic":true,"color":"#F6E79C"}],"font":"cgn:main","italic":false,"color":"white"}'
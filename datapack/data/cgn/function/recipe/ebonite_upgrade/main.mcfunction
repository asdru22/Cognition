data remove storage cgn:storage root.temp.macro
data modify storage cgn:storage root.temp.macro.id set string storage smithed.crafter:input recipe[{count:1,components:{"minecraft:custom_data":{cgn:{ebonite_upgradeable:1b}}}}].components."minecraft:item_name" 34 -2
data modify storage cgn:storage root.temp.macro.item set from storage smithed.crafter:input recipe[{count:1,components:{"minecraft:custom_data":{cgn:{ebonite_upgradeable:1b}}}}]
function cgn:recipe/ebonite_upgrade/make with storage cgn:storage root.temp.macro
return 1
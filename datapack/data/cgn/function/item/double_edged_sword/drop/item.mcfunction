data modify storage srn:storage root.temp.item set from entity @s item
execute if entity @s[tag=!cgn.no_item_drop] run function srn:technical/macros/loot/spawn with entity @s item
particle cloud
scoreboard players reset @s srn.id
scoreboard players reset @s cgn.dummy
execute if entity @s[tag=cgn.double_edged_sword.ebonite] on passengers run kill
kill @s
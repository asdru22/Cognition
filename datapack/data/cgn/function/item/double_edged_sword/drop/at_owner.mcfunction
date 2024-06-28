data modify storage srn:storage root.temp.item set from entity @s item
data modify storage srn:storage root.temp.item.Slot set from entity @s item.components."minecraft:custom_data".cgn.Slot

function cgn:item/double_edged_sword/drop/as_owner with storage srn:storage root.temp
scoreboard players reset @s srn.id
scoreboard players reset @s cgn.dummy
execute if entity @s[tag=cgn.double_edged_sword.ebonite] on passengers run kill
kill @s
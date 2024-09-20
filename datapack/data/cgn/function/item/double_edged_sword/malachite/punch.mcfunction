item modify entity @s contents cgn:double_edged_malachite_sword/break
data modify entity @s item.components."minecraft:custom_data".cgn.no_blades set value true
data modify entity @s item.components."minecraft:custom_data".cgn.usable set value true

particle gust ~ ~ ~


data modify storage cgn:storage root.temp.owner set from entity @s item.components."minecraft:custom_data".cgn.owner

execute summon marker run function cgn:item/double_edged_sword/malachite/summon_helper
data modify storage cgn:storage root.temp.rotation set from entity @s Rotation

scoreboard players reset #charged cgn.dummy
execute if entity @s[tag=cgn.charged_armor.in_air] run scoreboard players set #charged cgn.dummy 1

scoreboard players reset #mace cgn.dummy
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"items":"minecraft:mace","predicates":{"minecraft:enchantments":[{"enchantments":"cgn:pulse","levels":1}]}}}}} run scoreboard players set #mace cgn.dummy 1
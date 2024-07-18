scoreboard players operation #temp cgn.dummy = @s cgn.id
execute unless data storage cgn:storage root.temp.item.Slot run data modify storage cgn:storage root.temp.item.Slot set from entity @s SelectedItemSlot
execute if entity @s[gamemode=!creative] run function cgn:item/double_edged_sword/consume
execute store result score #gamemode cgn.dummy if entity @s[gamemode=creative]

function cgn:technical/string_uuid/init
data modify storage cgn:storage root.temp.macro.owner set from storage cgn:storage root.temp.uuid.out
data modify storage cgn:storage root.temp.macro.rotation set from entity @s Rotation

execute anchored eyes positioned ^ ^ ^ summon item_display run function cgn:item/double_edged_sword/summon with storage cgn:storage root.temp.macro

playsound cgn:item.double_edged_sword.throw master @a[distance=..16]

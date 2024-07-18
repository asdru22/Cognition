data modify storage cgn:storage root.temp.proj_found.count set value 1

## add projectile to item tag
data modify storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.stored_projectiles append from storage cgn:storage root.temp.proj_found

## remove 1 projectile
execute if data storage cgn:storage root.temp.proj_found{Slot:-106b} run item modify entity @s weapon.offhand cgn:decrease_count

execute store result storage cgn:storage root.temp.int.slot int 1 run data get storage cgn:storage root.temp.proj_found.Slot
execute if data storage cgn:storage root.temp.proj_found.Slot run function cgn:item/windup_crossbow/charging/remove_ammo with storage cgn:storage root.temp.int
data remove storage cgn:storage root.temp.proj_found.Slot
## lore
execute store result storage cgn:storage root.temp.int.count int 1 run scoreboard players add #temp cgn.dummy 1
function cgn:item/windup_crossbow/charging/lore with storage cgn:storage root.temp.int
## update nbt
execute unless data storage cgn:storage root.temp.item.Slot run function cgn:technical/macros/loot/replace_mainhand with storage cgn:storage root.temp.item
execute if data storage cgn:storage root.temp.item{Slot:106b} run function cgn:technical/macros/loot/replace_offhand with storage cgn:storage root.temp.item

tag @s add cgn.item.windup_crossbow.release

playsound minecraft:item.crossbow.loading_end player @a[distance=..10]
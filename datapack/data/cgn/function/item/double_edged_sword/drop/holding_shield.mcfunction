scoreboard players operation $strength player_motion.api.launch = @e[type=item_display,tag=cgn.projectile.double_edged_sword,tag=cgn.me,limit=1,sort=nearest] cgn.dummy

scoreboard players operation $strength player_motion.api.launch < #64 cgn.dummy

scoreboard players operation $strength player_motion.api.launch *= #128 cgn.dummy
execute rotated as @s anchored eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking

data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:shield"}
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:shield"}]

execute if data storage cgn:storage root.temp.item.Slot if entity @s[gamemode=!creative] run function cgn:technical/macros/damage_slot/main {slot:"weapon.offhand",amount:1}
execute unless data storage cgn:storage root.temp.item.Slot if entity @s[gamemode=!creative] run function cgn:technical/macros/damage_slot/main {slot:"weapon.mainhand",amount:1}

playsound minecraft:item.shield.block player @a[distance=..16]
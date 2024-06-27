scoreboard players operation #max cgn.dummy = @s cgn.electroplasm.max
scoreboard players operation #max cgn.dummy /= #10 cgn.dummy

scoreboard players operation #current cgn.dummy = @s cgn.electroplasm.current
scoreboard players operation #current cgn.dummy /= #5 cgn.dummy

scoreboard players operation #half cgn.dummy = #current cgn.dummy
scoreboard players operation #half cgn.dummy %= #2 cgn.dummy

scoreboard players operation #current cgn.dummy -= #half cgn.dummy
scoreboard players operation #current cgn.dummy /= #2 cgn.dummy

scoreboard players operation #max cgn.dummy -= #current cgn.dummy
scoreboard players operation #max cgn.dummy -= #half cgn.dummy

#tellraw @s ["full: ",{"score":{"name": "#current","objective": "cgn.dummy"}}," half: ",{"score":{"name": "#half","objective": "cgn.dummy"}}," empty: ",{"score":{"name": "#max","objective": "cgn.dummy"}}]

data modify storage cgn:storage root.temp.display set value []

execute if score #half cgn.dummy matches 1 run data modify storage cgn:storage root.temp.display insert -1 value {"translate":"actionbar.cgn.electroplasm.half"}

execute if score #current cgn.dummy matches 1.. run function cgn:entity/player/electroplasm/display/full_iter

execute if score #max cgn.dummy matches 1.. run function cgn:entity/player/electroplasm/display/empty_iter

execute if score @s cgn.air_time matches ..299 run return run title @s actionbar [{"text":"\ua005","font":"cgn:electroplasm/default"},{"nbt":"root.temp.display[]","storage":"cgn:storage","color":"#4e5c24","font":"cgn:electroplasm/negative","separator":"","interpret":true},{"nbt":"root.temp.display[]","storage":"cgn:storage","color":"#4e5c24","font":"cgn:electroplasm/high","separator":"","interpret":true}]

title @s actionbar [{"text":"\ua005","font":"cgn:electroplasm/default"},{"nbt":"root.temp.display[]","storage":"cgn:storage","color":"#4e5c24","font":"cgn:electroplasm/negative","separator":"","interpret":true},{"nbt":"root.temp.display[]","storage":"cgn:storage","color":"#4e5c24","font":"cgn:electroplasm/default","separator":"","interpret":true}]
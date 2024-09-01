execute if block ^ ^ ^0.01 #cgn:weathered run return run loot spawn ~ ~ ~ loot cgn:items/malachite
scoreboard players remove @s cgn.dummy 1
execute if score @s cgn.dummy matches 1.. positioned ^ ^ ^0.01 run function cgn:item/malachite/raycast
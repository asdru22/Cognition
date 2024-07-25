data modify entity @s Rotation set from storage cgn:storage root.temp.rotation

scoreboard players set @s cgn.dummy 0
tag @s add cgn.double_edged_sword.punched

tag @s remove cgn.double_edged_sword.charged 

playsound cgn:item.double_edged_sword.punch master @a[distance=..16] ~ ~ ~ 0.66 1

function cgn:technical/macros/damage_slot/main {slot:"container.0",amount:1}


execute if score #charged cgn.dummy matches 1 run tag @s add cgn.double_edged_sword.charged
execute if score #charged cgn.dummy matches 1 run tag @s add cgn.double_edged_sword.fast

tag @s remove cgn.double_edged_sword.return

execute if score #mace cgn.dummy matches 1 run function cgn:item/ebonite_sword/mace/init
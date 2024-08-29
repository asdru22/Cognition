data modify storage cgn:storage root.temp.owner set from entity @s Owner

execute as @e[type=item,distance=..2] if items entity @s contents minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite"}'] run kill
kill @s 

scoreboard players operation $temp cgn.dummy < #10 cgn.dummy
execute summon area_effect_cloud run function cgn:entity/projectile/arrow/malachite_cloud

playsound entity.generic.explode hostile @a[distance=..16]
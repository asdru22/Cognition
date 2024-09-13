#execute if items entity @s weapon.* crossbow[item_name='{"translate": "item.cgn.windup_crossbow"}'] run function cgn:item/windup_crossbow/use/tick
tag @s add cgn.me
execute as @n[type=#arrows,nbt={life:0s},tag=!cgn.tick] run function cgn:entity/projectile/arrow/setup
tag @s remove cgn.me
scoreboard players reset @s cgn.used_crossbow
scoreboard players reset @s cgn.used_bow
execute if items entity @s weapon.* crossbow[item_name='{"translate": "item.cgn.windup_crossbow"}'] run function cgn:item/windup_crossbow/use/tick
scoreboard players reset @s cgn.used_crossbow
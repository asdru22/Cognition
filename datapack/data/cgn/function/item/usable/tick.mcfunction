# impl
execute if score @s cgn.using_item = @s cgn.using_item_new run function cgn:item/usable/release
scoreboard players operation @s cgn.using_item_new = @s cgn.using_item
execute if score @s cgn.using_item matches 1 run function cgn:item/usable/use_once/init

# item specific
execute if items entity @s weapon.* crossbow[item_name='{"translate": "item.cgn.windup_crossbow"}'] run function cgn:item/windup_crossbow/charging/tick

# item specific
execute if items entity @s weapon.* poisonous_potato[item_name='{"translate": "item.cgn.automatic_bow"}'] run function cgn:item/automatic_bow/charging/tick
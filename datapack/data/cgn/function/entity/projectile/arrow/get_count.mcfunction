execute store result score $temp cgn.dummy if items block ~ ~ ~ contents minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite"}']
execute if score $temp cgn.dummy matches 1.. run function cgn:entity/projectile/arrow/explode_malachite

say co
execute store result score #count cgn.dummy run clear @s diamond_sword{cgn:{electroplasm_carvers:"mainhand"}} 0
execute if score #count cgn.dummy matches 1.. run function cgn:item/electroplasm_carvers/disable_mainhand

execute if predicate cgn:item/electroplasm_carvers/holding run function cgn:item/electroplasm_carvers/enable
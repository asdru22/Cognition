summon wind_charge ~ ~0.6 ~ {power:[0.0,-1.0,0.0]}
scoreboard players remove $count cgn.dummy 1
execute if score $count cgn.dummy matches 1.. run function cgn:test
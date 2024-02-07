execute if entity @s[gamemode=!creative] run function cgn:item/soulmender/damage
execute if entity @s[scores={srn.using_item=..15,cgn.electroplasm.current=20..}] run function cgn:item/soulmender/activate
advancement revoke @s only cgn:technical/entity_hurt_player/soulmender
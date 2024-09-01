$damage @s[nbt=!{UUID:$(array_uuid)}] 5 player_attack by $(owner)
$execute if entity @s[nbt=!{UUID:$(array_uuid)}] as $(uuid) at @s run function cgn:item/malachite_knife/break
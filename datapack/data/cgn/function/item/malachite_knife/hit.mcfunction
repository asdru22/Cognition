$damage @s[nbt=!{UUID:$(owner)}] 5 player_attack by @p[nbt={UUID:$(owner)}]
$execute if entity @s[nbt=!{UUID:$(owner)}] as $(uuid) run kill
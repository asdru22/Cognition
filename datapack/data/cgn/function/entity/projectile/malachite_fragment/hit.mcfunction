$execute if entity @s[nbt=!{UUID:$(owner)}] run return run damage @s 5 player_attack by @p[nbt={UUID:$(owner)}]

scoreboard players add @s cgn.malachite_fragments_collected 1
execute if entity @s[scores={cgn.malachite_fragments_collected=10..}] run function cgn:entity/projectile/malachite_fragment/reform
$kill @n[type=marker,tag=cgn.malachite_fragment,nbt={UUID:$(uuid)}]
scoreboard players set $temp cgn.dummy -1

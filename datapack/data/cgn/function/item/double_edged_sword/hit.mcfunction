# hit enemy
$execute if entity @s[nbt=!{UUID:$(owner)}] run damage @s $(throwing_damage) player_attack by @p[nbt={UUID:$(owner)}]
$execute if entity @s[nbt=!{UUID:$(owner)}] run return run execute as @n[type=item_display,tag=cgn.double_edged_sword,nbt={UUID:$(uuid)}] at @s run function cgn:item/double_edged_sword/item_display_on_hit
# hit owner
$execute as @n[type=item_display,tag=cgn.double_edged_sword,nbt={UUID:$(uuid)}] at @s if score @s cgn.animation_timer matches ..195 run function cgn:item/double_edged_sword/drop/main {owner:"$(owner)"}
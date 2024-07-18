#> function cgn:item/double_edged_sword/hit/main
execute if entity @s[type=player] run function cgn:item/double_edged_sword/hit/player
execute if entity @s[type=!player] run function cgn:item/double_edged_sword/hit/apply_damage with entity @e[type=item_display,tag=cgn.projectile.double_edged_sword,tag=cgn.me,limit=1,sort=nearest] item.components."minecraft:custom_data".cgn
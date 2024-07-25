$damage @s $(throwing_damage) cgn:double_edged_sword by $(owner)

execute as @n[type=item_display,tag=cgn.projectile.double_edged_sword,tag=cgn.me,tag=!cgn.double_edged_sword.return] run function cgn:item/double_edged_sword/bounce
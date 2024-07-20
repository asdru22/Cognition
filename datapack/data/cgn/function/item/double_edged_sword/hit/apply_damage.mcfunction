$damage @s $(throwing_damage) cgn:double_edged_sword by $(owner)

execute if entity @e[type=item_display,tag=cgn.me,limit=1,sort=nearest,tag=cgn.double_edged_sword.fire_aspect] run data modify entity @s Fire set value 60s
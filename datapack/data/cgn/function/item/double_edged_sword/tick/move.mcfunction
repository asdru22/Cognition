execute unless block ^ ^ ^0.5 #cgn:raycast_ignore run function cgn:item/double_edged_sword/tick/hit_block

tp @s[tag=!cgn.double_edged_sword.return,tag=!cgn.double_edged_sword.fast] ^ ^ ^0.5
tp @s[tag=!cgn.double_edged_sword.return,tag=cgn.double_edged_sword.fast] ^ ^ ^0.77


execute if entity @s[tag=!cgn.double_edged_sword.return] run function cgn:item/double_edged_sword/tick/return_timers
execute if entity @s[tag=cgn.malachite_fragment.return] unless block ^ ^ ^0.2 #cgn:raycast_ignore run return run kill @s 

execute unless block ^ ^ ^0.2 #cgn:raycast_ignore run return run function cgn:entity/projectile/malachite_fragment/hit_block with entity @s data.cgn
scoreboard players remove $temp cgn.dummy 1

execute if entity @s[tag=!cgn.malachite_fragment.hit_block] run function cgn:entity/projectile/malachite_fragment/move with entity @s data.cgn

execute if score $temp cgn.dummy matches 1.. at @s run function cgn:entity/projectile/malachite_fragment/loop
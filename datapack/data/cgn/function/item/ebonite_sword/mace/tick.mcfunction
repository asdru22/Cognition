execute if entity @s[scores={cgn.animation_timer=..-100},tag=!cgn.ebonite_sword_mace.hit_ground] run return run function cgn:item/ebonite_sword/mace/drop_item

execute if entity @s[tag=cgn.ebonite_sword_mace.hit_ground] if block ^ ^ ^0.5 #cgn:raycast_ignore run return run function cgn:item/ebonite_sword/mace/drop_item

execute unless block ^ ^ ^0.5 #cgn:raycast_ignore run return run execute if entity @s[tag=!cgn.ebonite_sword_mace.hit_ground] run function cgn:item/ebonite_sword/mace/hit_block
scoreboard players operation #id cgn.dummy = @s cgn.id

scoreboard players set $temp cgn.dummy 20
function cgn:item/ebonite_sword/mace/move_raycast
# impl
data remove entity @s attack
# main
execute if entity @s[tag=cgn.midnight_rose] run return run function cgn:block/midnight_rose/attack
execute if entity @s[tag=cgn.wispthorn] run return run function cgn:block/wispthorn/attack
execute if entity @s[tag=cgn.ebonite_sword_interaction] run return run execute on vehicle if entity @s[tag=!cgn.double_edged_sword.punched] run function cgn:item/double_edged_sword/punch/init

#execute if entity @s[tag=cgn.ebonite_sword_mace_interaction] run function cgn:item/ebonite_sword/mace/interact
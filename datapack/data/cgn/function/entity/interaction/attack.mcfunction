# impl
data remove entity @s attack

# main
execute if entity @s[tag=cgn.block.midnight_rose] run return run function cgn:block/midnight_rose/attack
execute if entity @s[tag=cgn.block.wispthorn] run return run function cgn:block/wispthorn/attack
execute if entity @s[tag=cgn.ebonite_sword_interaction] run function cgn:item/ebonite_sword/punch/init

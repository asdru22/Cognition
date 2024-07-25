# impl
data remove entity @s interaction

# attack
execute if entity @s[tag=cgn.block.midnight_rose] run return run function cgn:block/midnight_rose/interact/main
execute if entity @s[tag=cgn.block.wispthorn] run return run function cgn:block/wispthorn/interact
execute if entity @s[tag=cgn.ebonite_sword_mace_interaction] run function cgn:item/ebonite_sword/mace/interact
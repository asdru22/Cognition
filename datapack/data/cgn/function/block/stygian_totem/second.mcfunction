execute if entity @s[tag=cgn.block.stygian_totem.active] run function cgn:block/stygian_totem/effect

execute if entity @s[tag=!cgn.block.stygian_totem.active] if function cgn:block/redstone_power/check run return run function cgn:block/stygian_totem/activate

execute if entity @s[tag=cgn.block.stygian_totem.active] unless function cgn:block/redstone_power/check run return run function cgn:block/stygian_totem/deactivate
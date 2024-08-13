data merge block ~ ~-1 ~ {Lock:"§stygian_totem\\uF001",CustomName:'{"translate":"block.cgn.stygian_totem"}',Items:[]}

execute if block ~ ~-1 ~ dropper[facing = west] run return run function cgn:block/stygian_totem/macro {rotation:0}
execute if block ~ ~-1 ~ dropper[facing = south] run return run function cgn:block/stygian_totem/macro {rotation:270}
execute if block ~ ~-1 ~ dropper[facing = east] run return run function cgn:block/stygian_totem/macro {rotation:180}
execute if block ~ ~-1 ~ dropper[facing = north] run return run function cgn:block/stygian_totem/macro {rotation:90}


function cgn:block/stygian_totem/macro {rotation:0}
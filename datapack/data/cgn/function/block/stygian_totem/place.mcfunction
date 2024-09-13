data merge block ~ ~ ~ {Lock:"§1stygian_totem\\uF001",CustomName:'{"translate":"block.cgn.stygian_totem.name","font":"cgn:technical"}',Items:[]}

execute if block ~ ~ ~ furnace[facing = west] run return run function cgn:block/stygian_totem/macro {rotation:0}
execute if block ~ ~ ~ furnace[facing = south] run return run function cgn:block/stygian_totem/macro {rotation:270}
execute if block ~ ~ ~ furnace[facing = east] run return run function cgn:block/stygian_totem/macro {rotation:180}
execute if block ~ ~ ~ furnace[facing = north] run return run function cgn:block/stygian_totem/macro {rotation:90}

function cgn:block/hopper_updating/fill

function cgn:block/stygian_totem/macro {rotation:0}
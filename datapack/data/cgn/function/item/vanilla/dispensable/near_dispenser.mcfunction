execute if block ~ ~-1 ~ dispenser[facing=up] run return 1
execute if block ~ ~1 ~ dispenser[facing=down] run return 1
execute if block ~ ~ ~1 dispenser[facing=north] run return 1
execute if block ~ ~ ~-1 dispenser[facing=south] run return 1
execute if block ~1 ~ ~ dispenser[facing=west] run return 1
execute if block ~-1 ~ ~ dispenser[facing=east] run return 1
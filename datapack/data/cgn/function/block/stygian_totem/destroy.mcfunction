kill @s
function cgn:block/hopper_updating/undo
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"translate":"block.cgn.soul_seer"}'},id:"minecraft:barrel"}}] at @s run function cgn:block/stygian_totem/destroy_as_item
particle minecraft:item{item:{id:"minecraft:barrel",components:{"minecraft:custom_model_data":880000}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal

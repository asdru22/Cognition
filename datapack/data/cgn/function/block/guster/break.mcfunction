execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"font":"cgn:technical","translate":"block.cgn.guster.name"}'},id:"minecraft:dropper"}}] at @s run loot replace entity @s contents loot cgn:blocks/guster
function cgn:block/hopper_updating/undo

kill
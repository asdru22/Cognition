summon item_display ~ ~ ~ {item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":880009}},Tags:["cgn.block","cgn.tick","cgn.second","cgn.block.greek_fire","smithed.entity","smithed.block"],brightness:{block:15,sky:15}}
execute if block ~ ~1 ~ water run return run setblock ~ ~ ~ light[level=15,waterlogged=true]
setblock ~ ~ ~ light[level=15]
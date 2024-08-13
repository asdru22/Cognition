title @s actionbar ""
stopsound @s * minecraft:block.chest.locked

# Commands to run on click
scoreboard players set @s cgn.dummy 0
execute store result score @s cgn.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function cgn:block/stygian_totem/click/raycast
advancement revoke @s only cgn:technical/default_block_use/click_stygian_totem
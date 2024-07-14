scoreboard players set @s cgn.state 6
execute as @a[distance=..20] run playsound cgn:entity.gloomstone_sentinel.charge_attack hostile @s ~ ~ ~
scoreboard players set @s cgn.animation_timer 15
tag @s add cgn.me
execute as @a[distance=..2,gamemode=!creative,gamemode=!spectator] run damage @s 5 generic by @e[type=vindicator,tag=cgn.me,limit=1,sort=nearest,distance=..10]
tag @s remove cgn.me
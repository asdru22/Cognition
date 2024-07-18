data modify entity @s data.cgn set from storage cgn:storage root.temp.potion
$ride @s mount $(out)

tag @s add cgn.tick
tag @s add cgn.projectile.thrown_potion
tag @s add cgn.projectile
tag @s add cgn.projectile.no_timer
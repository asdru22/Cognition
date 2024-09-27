# Finishes the spell for players

function cgn:entity/peeper/summon_gloomstone_beam
data remove storage cgn:temp root
data modify storage cgn:temp root.pos set from entity @s Pos

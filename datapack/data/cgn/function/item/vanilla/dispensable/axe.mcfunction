execute unless block ~ ~ ~ #cgn:axe_interacts_with/main run return fail
function cgn:technical/macros/damage_slot/main {slot:"contents",amount:1}
particle minecraft:scrape ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]

execute if block ~ ~ ~ #cgn:axe_interacts_with/oxidized_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_copper
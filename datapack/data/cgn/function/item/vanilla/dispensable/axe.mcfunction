execute unless block ~ ~ ~ #cgn:axe_interacts_with/main run return fail
function cgn:technical/macros/damage_slot/main {slot:"contents",amount:1}

execute if block ~ ~ ~ #cgn:axe_interacts_with/oxidized_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/weathered_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/weathered_copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/exposed_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/exposed_copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/copper run return run function cgn:item/vanilla/dispensable/axe_interactions/copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/waxed_oxidized_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_oxidized_copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/waxed_weathered_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_weathered_copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/waxed_exposed_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_exposed_copper
execute if block ~ ~ ~ #cgn:axe_interacts_with/waxed_copper run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_copper

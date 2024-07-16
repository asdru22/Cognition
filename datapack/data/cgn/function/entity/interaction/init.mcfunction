data remove storage cgn:storage root.temp.item
data remove storage cgn:storage root.temp.macro


data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem

execute store result storage cgn:storage root.temp.macro.range float 1 run attribute @s minecraft:player.entity_interaction_range get

function cgn:entity/interaction/macro with storage cgn:storage root.temp.macro

advancement revoke @s only cgn:technical/player_interacted_with_entity/interaction
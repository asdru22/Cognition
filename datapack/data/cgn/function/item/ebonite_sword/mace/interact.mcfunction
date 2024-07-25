execute on vehicle run data modify storage cgn:storage root.temp.item set from entity @s item
execute on vehicle run kill
kill

execute as @p[gamemode=!creative,advancements={cgn:technical/player_interacted_with_entity/interaction=true}] unless items entity @s weapon.mainhand * run return run function cgn:technical/macros/loot/replace_mainhand with storage cgn:storage root.temp.item
execute as @p[gamemode=!creative,advancements={cgn:technical/player_interacted_with_entity/interaction=true}] unless items entity @s weapon.offhand * run function cgn:technical/macros/loot/replace_offhand with storage cgn:storage root.temp.item
# @a[advancements={cgn:player_interacted_with_entity={attack=true}}]

data remove storage cgn:storage root.temp.hit_item

scoreboard players operation #temp cgn.dummy = @s cgn.id
execute as @a[advancements={cgn:technical/player_interacted_with_entity/interaction={attack=true}}] if score #temp cgn.dummy = @s cgn.id run function cgn:item/ebonite_sword/punch/as_player

execute on vehicle if entity @s[tag=!cgn.double_edged_sword.punched] run function cgn:item/ebonite_sword/punch/as_item
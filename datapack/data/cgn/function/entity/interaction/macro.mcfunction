$execute if entity @s[advancements={cgn:technical/player_interacted_with_entity/interaction={attack=true}}] as @e[tag=cgn.interaction,type=interaction,distance=..$(range)] if data entity @s attack at @s run return run function cgn:entity/interaction/attack
$execute if entity @s[advancements={cgn:technical/player_interacted_with_entity/interaction={interact=true}}] as @e[tag=cgn.interaction,type=interaction,distance=..$(range)] if data entity @s interaction at @s run function cgn:entity/interaction/interact
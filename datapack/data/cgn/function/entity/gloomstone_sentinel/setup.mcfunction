data merge entity @s {Silent:1b,DeathLootTable:"cgn:entities/gloomstone_sentinel",CanPickUpLoot:0b,Health:1024f,CanJoinRaid:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:knockback_resistance",base:0.8},{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:2.4},{id:"movement_speed",base:0.2},{id:"attack_damage",base:-1024}],ArmorDropChances:[-1000.0f,-1000.0f,-1000.0f,-1000.0f],CustomName:'{"translate": "entity.cgn.gloomstone_sentinel"}',Tags:["cgn.tick","cgn.entity","cgn.entity.gloomstone_sentinel","cgn.second","smithed.entity"],HandItems:[{id:"poisonous_potato",components:{custom_model_data:880009},count:1},{}],HandDropChances:[-1000.0f,-1000.0f]}

#data merge entity @s {DeathLootTable:"cgn:entities/gloomstone_sentinel",CanPickUpLoot:0b,Health:1024f,CanJoinRaid:0b,attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:knockback_resistance",base:0.8},{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:2.4},{id:"movement_speed",base:0.2},{id:"attack_damage",base:-1024}],ArmorDropChances:[-1000.0f,-1000.0f,-1000.0f,-1000.0f],CustomName:'{"translate": "entity.cgn.gloomstone_sentinel"}',Tags:["cgn.tick","cgn.entity","cgn.entity.gloomstone_sentinel","cgn.second"],HandItems:[{id:"poisonous_potato",components:{custom_model_data:880009},count:1},{}],HandDropChances:[-1000.0f,-1000.0f]}

scoreboard players set @s cgn.health 6000
scoreboard players set @s cgn.state 0

item replace entity @s armor.head with leather_horse_armor[custom_model_data=880001,dyed_color={rgb:0},custom_data={cgn:{id:"gloomstone_sentinel",animations:[{anim:"death",duration:50,model:880006},{anim:"walking",model:880000},{anim:"idle",model:880001},{anim:"attack",duration:20,model:880002}]}}]
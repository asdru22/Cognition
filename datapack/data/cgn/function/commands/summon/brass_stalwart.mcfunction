summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.cgn.brass_stalwart"}',Team:"smithed.prevent_aggression",DeathLootTable:"cgn:entities/brass_stalwart",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["srn.tick","srn.second","srn.trader_entity","srn.entity","smithed.entity","cgn.test"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},srn:{custom_model_data:{head:880002,idle:880000,moving:880001,attacking:880003}},CustomModelData:880002}}],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:880000}}],Attributes:[{Name:"generic.scale",Base:0.5}]}

tellraw @s[type=player] {"translate":"commands.summon.success","with": [{"translate":"entity.cgn.brass_stalwart"}]}
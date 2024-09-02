$data merge entity @s {billboard:"center",teleport_duration:1,Tags:["cgn.tick","cgn.bubble","cgn.setup","cgn.bubble.$(bubble)","smithed.strict","smithed.entity"],item:{id:"warped_fungus_on_a_stick",count:1,components:{custom_model_data:$(cmd)}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

execute summon armor_stand run function cgn:entity/bubble/armor_stand
execute positioned ~-.5 ~-0.5 ~-.5 run ride @n[type=#cgn:can_enter_bubble,tag=!smithed.strict,dx=0,predicate=!cgn:entity_properties/has_vehicle] mount @s


schedule function cgn:entity/bubble/setup_schedule 1t
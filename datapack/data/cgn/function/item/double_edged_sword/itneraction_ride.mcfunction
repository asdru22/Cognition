scoreboard players operation @s cgn.id = #temp cgn.dummy
data merge entity @s {width:1f,height:0.2f,Tags:["cgn.interaction","cgn.ebonite_sword_interaction"]}
ride @s mount @e[type=item_display,limit=1,sort=nearest,tag=cgn.double_edged_sword.ebonite,tag=cgn.me]
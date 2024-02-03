# Starts the recipe process of a brewing recipe
data modify storage srn:storage root.temp.item.tag.CustomPotionColor set value 7267071
data modify storage srn:storage root.temp.item.tag.Potion set value "minecraft:mundane"
data modify storage srn:storage root.temp.item.tag.HideFlags set value 32
data modify storage srn:storage root.temp.item.tag.srn set value {id:"custom_potion",potion:{id:"cgn:surge"}}
# effects
execute if data storage srn:storage root.temp.item{id:"minecraft:potion"} run data modify storage srn:storage root.temp.item.tag.display.Name set value '{"translate":"item.cgn.potion.effect.surge","italic":false}'
execute if data storage srn:storage root.temp.item{id:"minecraft:potion"} run data modify storage srn:storage root.temp.item.tag.display.Lore set value ['""','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[2,{"translate":"item.cgn.electroplasm"}]}']


execute if data storage srn:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage srn:storage root.temp.item.tag.display.Name set value '{"translate":"item.cgn.splash_potion.effect.surge","italic":false}'

execute if data storage srn:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage srn:storage root.temp.item.tag.display.Name set value '{"translate":"item.cgn.lingering_potion.effect.surge","italic":false}'
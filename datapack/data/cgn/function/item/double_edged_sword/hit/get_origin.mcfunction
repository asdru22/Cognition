$execute as @a[scores={cgn.id=$(owner)}] run function cgn:technical/string_uuid/init
$data modify storage cgn:storage root.temp.damage set value $(throwing_damage)
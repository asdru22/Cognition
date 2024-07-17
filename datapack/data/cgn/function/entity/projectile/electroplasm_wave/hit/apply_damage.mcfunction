$damage @s $(damage) cgn:electroplasm_wave by $(owner)

$scoreboard players set #temp cgn.dummy $(damage)
$execute as $(owner) if entity @s[type=player] if score #temp cgn.dummy matches 30.. run advancement grant @s only cgn:gameplay/electroplasm_wave_damage

playsound cgn:entity.electroplasm_wave.hit player @a[distance=..16]
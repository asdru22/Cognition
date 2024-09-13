data modify storage cgn:storage root.temp.uuid.data set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}

data modify storage cgn:storage root.temp.uuid.in set from entity @s UUID
execute store result score $uuid0 cgn.dummy run data get storage cgn:storage root.temp.uuid.in[0]
execute store result score $uuid1 cgn.dummy run data get storage cgn:storage root.temp.uuid.in[1]
execute store result score $uuid2 cgn.dummy run data get storage cgn:storage root.temp.uuid.in[2]
execute store result score $uuid3 cgn.dummy run data get storage cgn:storage root.temp.uuid.in[3]

execute store result score 0= cgn.dummy run scoreboard players operation 1= cgn.dummy = $uuid0 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.0 int 1 run scoreboard players operation 0= cgn.dummy %= #256 cgn.dummy
execute store result score 2= cgn.dummy run scoreboard players operation 1= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.1 int 1 run scoreboard players operation 1= cgn.dummy %= #256 cgn.dummy
execute store result score 3= cgn.dummy run scoreboard players operation 2= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.2 int 1 run scoreboard players operation 2= cgn.dummy %= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.3 int 1 run scoreboard players operation 3= cgn.dummy /= #256 cgn.dummy

execute store result score 0= cgn.dummy run scoreboard players operation 1= cgn.dummy = $uuid1 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.4 int 1 run scoreboard players operation 0= cgn.dummy %= #256 cgn.dummy
execute store result score 2= cgn.dummy run scoreboard players operation 1= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.5 int 1 run scoreboard players operation 1= cgn.dummy %= #256 cgn.dummy
execute store result score 3= cgn.dummy run scoreboard players operation 2= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.6 int 1 run scoreboard players operation 2= cgn.dummy %= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.7 int 1 run scoreboard players operation 3= cgn.dummy /= #256 cgn.dummy

execute store result score 0= cgn.dummy run scoreboard players operation 1= cgn.dummy = $uuid2 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.8 int 1 run scoreboard players operation 0= cgn.dummy %= #256 cgn.dummy
execute store result score 2= cgn.dummy run scoreboard players operation 1= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.9 int 1 run scoreboard players operation 1= cgn.dummy %= #256 cgn.dummy
execute store result score 3= cgn.dummy run scoreboard players operation 2= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.a int 1 run scoreboard players operation 2= cgn.dummy %= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.b int 1 run scoreboard players operation 3= cgn.dummy /= #256 cgn.dummy

execute store result score 0= cgn.dummy run scoreboard players operation 1= cgn.dummy = $uuid3 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.c int 1 run scoreboard players operation 0= cgn.dummy %= #256 cgn.dummy
execute store result score 2= cgn.dummy run scoreboard players operation 1= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.d int 1 run scoreboard players operation 1= cgn.dummy %= #256 cgn.dummy
execute store result score 3= cgn.dummy run scoreboard players operation 2= cgn.dummy /= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.e int 1 run scoreboard players operation 2= cgn.dummy %= #256 cgn.dummy
execute store result storage cgn:storage root.temp.uuid.data.f int 1 run scoreboard players operation 3= cgn.dummy /= #256 cgn.dummy

function cgn:technical/string_uuid/get_hexes with storage cgn:storage root.temp.uuid.data
function cgn:technical/string_uuid/concat_uuid with storage cgn:storage root.temp.uuid.data
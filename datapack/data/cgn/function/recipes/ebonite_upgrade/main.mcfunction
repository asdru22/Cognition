data remove storage cgn:storage root.temp
data modify storage cgn:storage root.temp.id set string storage smithed.crafter:input recipe[{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}}].tag.cgn.id 11
data modify storage cgn:storage root.temp.item set from storage smithed.crafter:input recipe[{Count:1b,tag:{cgn:{ebonite_upgradeable:1b}}}]
function cgn:recipes/ebonite_upgrade/make with storage cgn:storage root.temp
return 1
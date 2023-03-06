# Called by one of the wt_biome:ui/general/biome/select/page functions
# Commands to run when the Birch Forest biome button is pressed

tag @s[tag=!wt_biome.menu.biome.replace] add wt_biome.place_biome.birch_forest
tag @s[tag=wt_biome.menu.biome.replace,tag=wt_biome.replace_biome.birch_forest] add wt.temp
tag @s[tag=wt_biome.menu.biome.replace,tag=wt.temp] remove wt_biome.replace_biome.birch_forest
tag @s[tag=wt_biome.menu.biome.replace,tag=!wt.temp] add wt_biome.replace_biome.birch_forest
tag @s remove wt.temp

function wt_biome:ui/general/biome/select/button_common

# Called by wt_biome:ui/general/biome/menu
# Cycles the replace mode to the left

tag @s[tag=!wt_biome.replace_biome.normal,tag=!wt_biome.replace_biome.exclude] add wt.temp
tag @s[tag=wt_biome.replace_biome.normal] remove wt_biome.replace_biome.normal
tag @s[tag=wt_biome.replace_biome.exclude] add wt_biome.replace_biome.normal
tag @s[tag=wt_biome.replace_biome.exclude] remove wt_biome.replace_biome.exclude
tag @s[tag=wt.temp] add wt_biome.replace_biome.exclude
tag @s remove wt.temp

function wt_biome:ui/general/biome/menu

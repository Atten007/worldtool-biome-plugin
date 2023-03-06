# Called by page functions
# Resets biomes to replace

function wt_biome:ui/general/biome/select/replace/remove_tags

execute if entity @s[tag=wt_biome.menu.brush.biome] run function wt_biome:ui/brush/menu/select_biomes/update_replace

function wt_biome:ui/general/biome/select/back_to

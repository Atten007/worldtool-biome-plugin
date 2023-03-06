# Called by all biome selection functions

execute if entity @s[tag=wt_biome.menu.brush.biome,tag=wt_biome.menu.biome.replace] run function wt_biome:ui/brush/menu/select_biomes/update_replace

execute if entity @s[tag=!wt_biome.menu.biome.replace] run function worldtool:ui/return
execute if entity @s[tag=wt_biome.menu.biome.replace] run function wt_biome:ui/general/biome/select/back_to

# Called by the ui/return.back hook (#worldtool:ui/return.back)
# Commands to run when going back from returnable menus

execute if entity @s[tag=wt_biome.menu.biome] run function wt_biome:ui/general/biome/menu
execute if entity @s[tag=wt_biome.menu.brush.biome,tag=!wt_biome.menu.biome.replace] run function worldtool:ui_brush/menu
execute if entity @s[tag=wt_biome.menu.brush.biome,tag=wt_biome.menu.biome.replace] run function wt_biome:ui/brush/menu/select_biomes/back

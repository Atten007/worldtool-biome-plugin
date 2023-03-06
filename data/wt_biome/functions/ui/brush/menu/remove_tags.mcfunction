# Called by the ui_brush/menu/remove_tags hook (#worldtool:hooks/ui_brush/menu/remove_tags)
# Removes the brush tags added by this plugin, and displays the bottom part of the brush menu

execute if entity @s[tag=wt_biome.brush.biome] run function wt_biome:ui/brush/menu/display

tag @s remove wt_biome.brush.biome
tag @s remove wt_biome.brush.replace.normal
tag @s remove wt_biome.brush.replace.exclude

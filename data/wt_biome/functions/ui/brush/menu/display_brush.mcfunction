# Called by the ui_brush/menu/display_brush hook (#worldtool:hooks/ui_brush/menu/display_brush)
# Displays the selected plugin brush

tellraw @s[tag=wt_biome.brush.biome] {"nbt":"Translation.\"wt_biome.info.selected_brush.biome\"","storage": "worldtool:storage","color": "yellow","bold": true}

# Called by the ui_brush/menu/display_brush hook (#worldtool:hooks/ui_brush/menu/display_brush)
# Displays the selected plugin brush

tellraw @s[tag=wt_example.brush.snow] {"nbt":"Translation.\"wt_example.info.selected_brush.snow\"","storage": "worldtool:storage","color": "yellow","bold": true}

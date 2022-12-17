# Called by the ui_brush/menu/remove_tags hook (#worldtool:hooks/ui_brush/menu/remove_tags)
# Removes the brush tags added by this plugin, and displays the bottom part of the brush menu

tellraw @s[tag=wt_example.brush.snow] {"nbt":"Translation.\"button.brush.select_brush.name\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.select_brush.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/menu"}}

tag @s remove wt_example.brush.snow

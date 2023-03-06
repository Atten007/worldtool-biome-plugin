# Called by the ui_general/plugin_page hook (#worldtool:hooks/ui_general/plugin_page)
# Displays the buttons to this plugin's General Tool menus

tellraw @s {"nbt":"Translation.\"wt_biome.button.biome.name\"","storage": "worldtool:storage","color": "#60cc02","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_biome.button.biome.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/menu"}}

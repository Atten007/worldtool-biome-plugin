# Called by the ui_general/plugin_page hook (#worldtool:hooks/ui_general/plugin_page)
# Displays the buttons to this plugin's General Tool menus

tellraw @s {"nbt":"Translation.\"wt_example.button.snow.name\"","storage": "worldtool:storage","color": "#a1d9ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_example.button.snow.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_example:ui/general/snow/menu"}}

# Called by the ui_brush/brush_list hook (#worldtool:hooks/ui_shapes/brush_list)
# Displays this plugin's brushes as buttons

# Snow
execute unless predicate wt_example:snow_brush run tellraw @s {"nbt":"Translation.\"wt_example.button.brush.snow.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_example.button.brush.snow.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_example:ui/brush/select_brush/snow"}}
execute if predicate wt_example:snow_brush run tellraw @s {"nbt":"Translation.\"wt_example.button.brush.snow.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.already_selected.description\"","storage": "worldtool:storage"}}}

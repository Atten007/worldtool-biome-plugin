# Called by the ui_brush/brush_list hook (#worldtool:hooks/ui_shapes/brush_list)
# Displays this plugin's brushes as buttons

# Biome
execute unless predicate wt_biome:biome_brush run tellraw @s {"nbt":"Translation.\"wt_biome.button.brush.biome.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_biome.button.brush.biome.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/brush/select_brush/biome"}}
execute if predicate wt_biome:biome_brush run tellraw @s {"nbt":"Translation.\"wt_biome.button.brush.biome.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.already_selected.description\"","storage": "worldtool:storage"}}}

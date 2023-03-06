# Called by the ui_brush/menu/add_tags hook (#worldtool:hooks/ui_brush/menu/add_tags)
# Adds/removes tags for what brush settings to display

tag @s[predicate=wt_biome:biome_brush] add wt_biome.brush.biome

tag @s[tag=wt_biome.brush.biome] remove wt.setting.before_block
tag @s[tag=wt_biome.brush.biome] remove wt.setting.update_block
tag @s[tag=wt_biome.brush.biome] remove wt.brush_selections.normal

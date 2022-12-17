# Called by the ui_brush/menu/add_tags hook (#worldtool:hooks/ui_brush/menu/add_tags)
# Adds/removes tags for what brush settings to display

tag @s[predicate=wt_example:snow_brush] add wt_example.brush.snow

tag @s[tag=wt_example.brush.snow] remove wt.setting.before_block
tag @s[tag=wt_example.brush.snow] remove wt.setting.update_block
tag @s[tag=wt_example.brush.snow] remove wt.brush_selections.normal

# Called by wt_biome:ui/brush/menu/remove_tags
# Cycles the replace mode to the left

tag @s remove wt_biome.brush.replace.normal
tag @s remove wt_biome.brush.replace.exclude

tag @s[predicate=worldtool:brush_tool/settings/replace/normal] add wt_biome.brush.replace.normal
tag @s[predicate=worldtool:brush_tool/settings/replace/exclude] add wt_biome.brush.replace.exclude

item modify entity @s[tag=!wt_biome.brush.replace.normal,tag=!wt_biome.brush.replace.exclude] weapon.mainhand worldtool:brush_tool/settings/replace/exclude
item modify entity @s[tag=wt_biome.brush.replace.normal] weapon.mainhand worldtool:brush_tool/settings/replace/none
item modify entity @s[tag=wt_biome.brush.replace.exclude] weapon.mainhand worldtool:brush_tool/settings/replace/normal

tag @s remove wt_biome.brush.replace.normal
tag @s remove wt_biome.brush.replace.exclude

function worldtool:ui_brush/menu

# Called by the language/en_us hook (#worldtool:language/en_us)
# Adds translations to the English (US) language

data modify storage worldtool:storage Translation."wt_example.info" set value '["",{"text":"WorldTool Example Plugin","color":"#2982ff","bold":true}," for WorldTool 0.6"]'

data modify storage worldtool:storage Translation."wt_example.process.snow" set value "Snow"
data modify storage worldtool:storage Translation."wt_example.button.snow.name" set value "[Snow...]"
data modify storage worldtool:storage Translation."wt_example.button.snow.description" set value "Place snow on top of the selected blocks"
data modify storage worldtool:storage Translation."wt_example.button.snow.run.description" set value "Run the snow placing"
data modify storage worldtool:storage Translation."wt_example.button.snow.filter.description" set value "Choose which block(s) to place snow on top of"

data modify storage worldtool:storage Translation."wt_example.button.brush.snow.name" set value "[Snow]"
data modify storage worldtool:storage Translation."wt_example.button.brush.snow.description" set value "Place snow on top of blocks"
data modify storage worldtool:storage Translation."wt_example.lore.selected_brush.snow" set value "Selected brush: Snow"
data modify storage worldtool:storage Translation."wt_example.info.selected_brush.snow" set value "Selected brush: Snow"

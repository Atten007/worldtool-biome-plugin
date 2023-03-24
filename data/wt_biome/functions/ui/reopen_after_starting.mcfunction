# Called by the ui/reopen_menu/after_starting hook (#worldtool:hooks/ui/reopen_menu/after_starting)
# Reopens the snow menu (in the filter menu) after the process is started

execute if entity @s[tag=wt_biome.menu.biome.select] run function wt_biome:ui/general/biome/select/back_to

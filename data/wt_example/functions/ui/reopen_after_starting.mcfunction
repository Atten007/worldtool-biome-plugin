# Called by the ui/reopen_menu/after_starting hook (#worldtool:hooks/ui/reopen_menu/after_starting)
# Reopens the snow menu (in the filter menu) after the process is started

execute if entity @s[tag=wt_example.menu.snow.filter] run function wt_example:ui/general/snow/menu

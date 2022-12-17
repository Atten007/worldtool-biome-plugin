# Called by the ui/reopen_menu/from_submenu hook (#worldtool:hooks/ui/reopen_menu/from_submenu)
# Reopens the snow menu going back from the pick block menu

execute if entity @s[tag=wt_example.menu.snow] run function wt_example:ui/general/snow/menu

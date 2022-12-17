# Called by the ui/return hook (#worldtool:ui/return)
# Commands to run when returning from common menus such as the two block query

execute if entity @s[tag=wt_example.menu.snow.filter] run function wt_example:ui/general/snow/start

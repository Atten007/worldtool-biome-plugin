# Called by the ui/return.back hook (#worldtool:ui/return.back)
# Commands to run when going back from returnable menus such as the two block query

execute if entity @s[tag=wt_example.menu.snow.filter] run function wt_example:ui/general/snow/menu

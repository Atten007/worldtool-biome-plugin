# Called by the load hook (#worldtool:hooks/load)
# Sets up the plugin

scoreboard players add $plugins worldtool 1

scoreboard players add $generalToolPlugins worldtool 1
scoreboard players add $brushToolPlugins worldtool 1

execute unless score #plugin.example.version worldtool matches 1 run function worldtool:language/reload
scoreboard players set #plugin.example.version worldtool 1

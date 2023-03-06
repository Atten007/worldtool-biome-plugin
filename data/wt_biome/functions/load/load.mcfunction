# Called by the load hook (#worldtool:hooks/load)
# Sets up the plugin

scoreboard players add $plugins worldtool 1

scoreboard players add $generalToolPlugins worldtool 1
scoreboard players add $brushToolPlugins worldtool 1
scoreboard players add $blocksPerTickPlugins worldtool 1

execute unless score #plugin.wt_biome.version worldtool matches 1 run function worldtool:language/reload
execute unless score #plugin.wt_biome.version worldtool matches 1 unless score $version worldtool matches 5.. run tellraw @a {"nbt":"Translation.\"wt_biome.warning.outdated\"","storage": "worldtool:storage","color": "gold"}

scoreboard players set #plugin.wt_biome.version worldtool 1

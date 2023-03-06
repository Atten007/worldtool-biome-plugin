# Called by the setup_blocks_per_tick hook (#worldtool:hooks/setup_blocks_per_tick)
# Sets up the blocks per tick values for this plugin's processes

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:biome_plugin"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:biome_plugin",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}

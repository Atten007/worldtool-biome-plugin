# Called by the setup_blocks_per_tick hook (#worldtool:hooks/setup_blocks_per_tick)
# Sets up the blocks per tick values for this plugin's processes

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"example:snow"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"example:snow",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}

# Called by the process_start/common/setup_process hook (#worldtool:hooks/process_start/common/setup_process)
# Sets up this plugin's processes that use the common startup system

execute if entity @s[tag=wt_biome.setup.biome] run function wt_biome:process_start/general/setup_process/biome/setup

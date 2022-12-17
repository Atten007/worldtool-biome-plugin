# Called by the process_start/common/setup_process hook (#worldtool:hooks/process_start/common/setup_process)
# Sets up this plugin's processes that use the common startup system

execute if entity @s[tag=wt_example.setup.snow] run function wt_example:ui/general/snow/setup_process

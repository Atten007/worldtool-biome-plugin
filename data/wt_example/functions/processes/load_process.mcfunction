# Called by the process/check_tags hook (#worldtool:hooks/process/check_tags)
# Runs this plugin's processes

execute if entity @s[tag=wt_example.process.snow] run function wt_example:processes/snow/main

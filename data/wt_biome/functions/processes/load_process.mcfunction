# Called by the process/check_tags hook (#worldtool:hooks/process/check_tags)
# Runs this plugin's processes

execute if entity @s[tag=wt_biome.process.biome] run function wt_biome:processes/biome/main

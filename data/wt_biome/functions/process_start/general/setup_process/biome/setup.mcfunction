# Called by the wt_biome:process_start/common/setup_process
# Sets up the biome process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"wt_biome.process.biome\\"","storage":"worldtool:storage"}',ID:"worldtool:biome_plugin",Tags:["wt_biome.process.biome"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:biome_plugin"}].Value

function wt_biome:process_start/general/setup_process/biome/get_place
function wt_biome:ui/general/biome/select/remove_tags

execute store success score #temp worldtool unless entity @s[tag=!wt_biome.replace_biome.normal,tag=!wt_biome.replace_biome.exclude]
execute if entity @s[tag=wt_biome.replace_biome.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace.normal"
execute if entity @s[tag=wt_biome.replace_biome.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace.exclude"
execute if score #temp worldtool matches 1 run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace"

execute if score #temp worldtool matches 1 run function wt_biome:process_start/general/setup_process/biome/get_replace

function worldtool:process_start/general/set_process_values

tag @s remove wt_biome.setup.biome

function worldtool:technical/save_load/backup/load

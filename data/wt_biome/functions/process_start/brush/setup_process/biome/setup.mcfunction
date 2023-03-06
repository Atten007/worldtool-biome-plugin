# Called by wt_biome:process_start/brush/setup_process
# Sets up the biome process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"wt_biome.process.biome\\"","storage":"worldtool:storage"}',ID:"worldtool:biome_plugin",Tags:["wt_biome.process.biome","wt.no_message"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:biome_plugin"}].Value

function wt_biome:process_start/brush/setup_process/biome/get_place

execute store success score #temp worldtool unless entity @s[predicate=!worldtool:brush_tool/settings/replace/normal,predicate=!worldtool:brush_tool/settings/replace/exclude]
execute if entity @s[predicate=worldtool:brush_tool/settings/replace/normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace.normal"
execute if entity @s[predicate=worldtool:brush_tool/settings/replace/exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace.exclude"
execute if score #temp worldtool matches 1 run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace"

execute if score #temp worldtool matches 1 run function wt_biome:ui/brush/menu/select_biomes/tags_from_replace
execute if score #temp worldtool matches 1 run function wt_biome:process_start/general/setup_process/biome/get_replace
execute if score #temp worldtool matches 1 run function wt_biome:ui/general/biome/select/replace/remove_tags

function worldtool:process_start/brush/start/normal/setup_process/set_process_values

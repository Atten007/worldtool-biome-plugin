# Called by the wt_example:process_start/common/setup_process
# Sets up the snow process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"wt_example.process.snow\\"","storage":"worldtool:storage"}',ID:"example:snow",Tags:["wt_example.process.snow"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"example:snow"}].Value

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt_example.process.snow.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt_example.process.snow.filter.exclude"

function worldtool:process_start/general/set_process_values

tag @s remove wt_example.setup.snow

function worldtool:technical/save_load/backup/load

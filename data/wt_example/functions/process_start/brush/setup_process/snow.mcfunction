# Called by wt_example:process_start/brush/setup_process
# Sets up the snow process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"wt_example.process.snow\\"","storage":"worldtool:storage"}',ID:"example:snow",Tags:["wt_example.process.snow","wt.no_message"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"example:snow"}].Value

function worldtool:process_start/brush/start/normal/setup_process/set_process_values

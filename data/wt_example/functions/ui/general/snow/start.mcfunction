# Called by wt_example:ui/general/snow/menu and the input/primary_block hook (#worldtool:hooks/input/primary_block)
# Readies the snow process for setup

tag @s add wt_example.setup.snow
function worldtool:process_start/general/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

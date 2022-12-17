# Called by wt_example:ui/general/buttons
# Displays the snow menu

function worldtool:ui/clear_chat
function worldtool:ui_general/back_button
tag @s add wt_example.menu.snow

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tellraw @s ["\n",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_example.button.snow.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_example:ui/general/snow/start"}}," ",{"nbt":"Translation.\"button.filter.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_example.button.snow.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_example:ui/general/snow/filter"}}]
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load

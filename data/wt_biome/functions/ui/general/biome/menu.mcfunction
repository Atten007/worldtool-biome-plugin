# Called by wt_biome:ui/general/buttons
# Displays the biome menu

function worldtool:ui/clear_chat
function worldtool:ui_general/back_button
tag @s add wt_biome.menu.biome

tag @s remove wt_biome.menu.biome.replace

tellraw @s[tag=!wt_biome.replace_biome.normal,tag=!wt_biome.replace_biome.exclude] [{"nbt":"Translation.\"wt_biome.label.replace_mode\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/cycle_left"}},{"nbt":"Translation.\"wt_biome.replace_mode.none\"","storage": "worldtool:storage","color": "green"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/cycle_right"}}]
tellraw @s[tag=wt_biome.replace_biome.normal] [{"nbt":"Translation.\"wt_biome.label.replace_mode\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/cycle_left"}},{"nbt":"Translation.\"wt_biome.replace_mode.normal\"","storage": "worldtool:storage","color": "green"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/cycle_right"}}," ",{"nbt":"Translation.\"wt_biome.button.biome.replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_biome.button.biome.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/load"}}]
tellraw @s[tag=wt_biome.replace_biome.exclude] [{"nbt":"Translation.\"wt_biome.label.replace_mode\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/cycle_left"}},{"nbt":"Translation.\"wt_biome.replace_mode.exclude\"","storage": "worldtool:storage","color": "green"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/cycle_right"}}," ",{"nbt":"Translation.\"wt_biome.button.biome.exclude.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_biome.button.biome.exclude.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/load"}}]
tellraw @s ["\n",{"nbt":"Translation.\"wt_biome.button.biome.select.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_biome.button.biome.select.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/page1"}}]
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
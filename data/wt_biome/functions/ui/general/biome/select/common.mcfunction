# Called by page functions

tag @s remove wt_biome.menu.biome.select.page.1
tag @s remove wt_biome.menu.biome.select.page.2
tag @s remove wt_biome.menu.biome.select.page.3
tag @s remove wt_biome.menu.biome.select.page.4
tag @s remove wt_biome.menu.biome.select.page.5
tag @s remove wt_biome.menu.biome.select.page.plugins
function wt_biome:ui/general/biome/select/remove_tags

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tag @s add wt_biome.menu.biome.select
function worldtool:ui/return.back_button

tellraw @s[tag=wt_biome.menu.biome.replace] [{"nbt":"Translation.\"button.reset_all.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"wt_biome.button.biome.reset_all.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/replace/reset"}},"\n"]

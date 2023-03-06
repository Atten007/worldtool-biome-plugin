# Called by the wt_biome:ui/general/biome/biomes/ functions
# Readies the biome process for setup

tag @s add wt_biome.setup.biome
function worldtool:process_start/general/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

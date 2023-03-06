# Called by wt_biome:ui/brush/menu/select_biomes/replace and wt_biome:process_start/brush/setup_process/biome/setup
# Gets which biomes are being replaced/excluded

data modify storage worldtool:storage Temp.BiomePlugin.ReplaceBiomes set from entity @s SelectedItem.tag.WorldTool.BrushSettings.BiomePlugin.ReplaceBiomes
function wt_biome:ui/general/biome/select/replace/remove_tags

execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:the_void"]} run tag @s add wt_biome.replace_biome.the_void
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:plains"]} run tag @s add wt_biome.replace_biome.plains
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:sunflower_plains"]} run tag @s add wt_biome.replace_biome.sunflower_plains
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:snowy_plains"]} run tag @s add wt_biome.replace_biome.snowy_plains
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:ice_spikes"]} run tag @s add wt_biome.replace_biome.ice_spikes
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:desert"]} run tag @s add wt_biome.replace_biome.desert
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:swamp"]} run tag @s add wt_biome.replace_biome.swamp
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:mangrove_swamp"]} run tag @s add wt_biome.replace_biome.mangrove_swamp
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:forest"]} run tag @s add wt_biome.replace_biome.forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:flower_forest"]} run tag @s add wt_biome.replace_biome.flower_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:birch_forest"]} run tag @s add wt_biome.replace_biome.birch_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:dark_forest"]} run tag @s add wt_biome.replace_biome.dark_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:old_growth_birch_forest"]} run tag @s add wt_biome.replace_biome.old_growth_birch_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:old_growth_pine_taiga"]} run tag @s add wt_biome.replace_biome.old_growth_pine_taiga
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:old_growth_spruce_taiga"]} run tag @s add wt_biome.replace_biome.old_growth_spruce_taiga
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:taiga"]} run tag @s add wt_biome.replace_biome.taiga
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:snowy_taiga"]} run tag @s add wt_biome.replace_biome.snowy_taiga
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:savanna"]} run tag @s add wt_biome.replace_biome.savanna
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:savanna_plateau"]} run tag @s add wt_biome.replace_biome.savanna_plateau
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:windswept_hills"]} run tag @s add wt_biome.replace_biome.windswept_hills
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:windswept_gravelly_hills"]} run tag @s add wt_biome.replace_biome.windswept_gravelly_hills
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:windswept_forest"]} run tag @s add wt_biome.replace_biome.windswept_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:windswept_savanna"]} run tag @s add wt_biome.replace_biome.windswept_savanna
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:jungle"]} run tag @s add wt_biome.replace_biome.jungle
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:sparse_jungle"]} run tag @s add wt_biome.replace_biome.sparse_jungle
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:bamboo_jungle"]} run tag @s add wt_biome.replace_biome.bamboo_jungle
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:badlands"]} run tag @s add wt_biome.replace_biome.badlands
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:eroded_badlands"]} run tag @s add wt_biome.replace_biome.eroded_badlands
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:wooded_badlands"]} run tag @s add wt_biome.replace_biome.wooded_badlands
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:meadow"]} run tag @s add wt_biome.replace_biome.meadow
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:grove"]} run tag @s add wt_biome.replace_biome.grove
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:snowy_slopes"]} run tag @s add wt_biome.replace_biome.snowy_slopes
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:frozen_peaks"]} run tag @s add wt_biome.replace_biome.frozen_peaks
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:jagged_peaks"]} run tag @s add wt_biome.replace_biome.jagged_peaks
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:stony_peaks"]} run tag @s add wt_biome.replace_biome.stony_peaks
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:river"]} run tag @s add wt_biome.replace_biome.river
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:frozen_river"]} run tag @s add wt_biome.replace_biome.frozen_river
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:beach"]} run tag @s add wt_biome.replace_biome.beach
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:snowy_beach"]} run tag @s add wt_biome.replace_biome.snowy_beach
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:stony_shore"]} run tag @s add wt_biome.replace_biome.stony_shore
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:warm_ocean"]} run tag @s add wt_biome.replace_biome.warm_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:lukewarm_ocean"]} run tag @s add wt_biome.replace_biome.lukewarm_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:deep_lukewarm_ocean"]} run tag @s add wt_biome.replace_biome.deep_lukewarm_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:ocean"]} run tag @s add wt_biome.replace_biome.ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:deep_ocean"]} run tag @s add wt_biome.replace_biome.deep_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:cold_ocean"]} run tag @s add wt_biome.replace_biome.cold_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:deep_cold_ocean"]} run tag @s add wt_biome.replace_biome.deep_cold_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:frozen_ocean"]} run tag @s add wt_biome.replace_biome.frozen_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:deep_frozen_ocean"]} run tag @s add wt_biome.replace_biome.deep_frozen_ocean
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:mushroom_fields"]} run tag @s add wt_biome.replace_biome.mushroom_fields
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:dripstone_caves"]} run tag @s add wt_biome.replace_biome.dripstone_caves
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:lush_caves"]} run tag @s add wt_biome.replace_biome.lush_caves
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:deep_dark"]} run tag @s add wt_biome.replace_biome.deep_dark
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:nether_wastes"]} run tag @s add wt_biome.replace_biome.nether_wastes
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:warped_forest"]} run tag @s add wt_biome.replace_biome.warped_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:crimson_forest"]} run tag @s add wt_biome.replace_biome.crimson_forest
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:soul_sand_valley"]} run tag @s add wt_biome.replace_biome.soul_sand_valley
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:basalt_deltas"]} run tag @s add wt_biome.replace_biome.basalt_deltas
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:the_end"]} run tag @s add wt_biome.replace_biome.the_end
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:end_highlands"]} run tag @s add wt_biome.replace_biome.end_highlands
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:end_midlands"]} run tag @s add wt_biome.replace_biome.end_midlands
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:small_end_islands"]} run tag @s add wt_biome.replace_biome.small_end_islands
execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:end_barrens"]} run tag @s add wt_biome.replace_biome.end_barrens
# Called by the process_start/brush/normal_start/processes hook (#worldtool:process_start/brush/normal_start/processes)
# Different start types depending on the brush selected

execute if predicate wt_biome:biome_brush run function wt_biome:process_start/brush/setup_process/biome/setup

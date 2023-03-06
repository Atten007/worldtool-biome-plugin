# Called by the process_start/brush/start hook (#worldtool:process_start/brush/start)
# Different start types depending on the brush selected

execute if predicate wt_biome:biome_brush run function worldtool:process_start/brush/start/normal/start

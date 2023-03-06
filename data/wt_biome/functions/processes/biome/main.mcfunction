# Called by various functions
# The process functionality for biomes

scoreboard players add #blocksChecked worldtool 1

execute store success score #temp worldtool if entity @s[tag=!wt_biome.process.biome.replace]
execute if score #temp worldtool matches 0 run function wt_biome:processes/biome/check_biome

execute if score #temp worldtool matches 1 run function wt_biome:processes/biome/place_biome

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_biome:processes/biome/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_biome:processes/biome/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_biome:processes/biome/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_biome:processes/biome/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_biome:processes/biome/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_biome:processes/biome/-y

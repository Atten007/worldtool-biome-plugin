# Called by various functions
# The process functionality for snow

scoreboard players add #blocksChecked worldtool 1

scoreboard players set #temp worldtool 0
# With no filter
execute if entity @s[tag=!wt_example.process.snow.filter.normal,tag=!wt_example.process.snow.filter.exclude] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ minecraft:snow if block ~ ~1 ~ minecraft:air run scoreboard players set #temp worldtool 1
# With a filter
execute if entity @s[tag=wt_example.process.snow.filter.normal] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all if block ~ ~1 ~ minecraft:air run scoreboard players set #temp worldtool 1
execute if entity @s[tag=wt_example.process.snow.filter.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all if block ~ ~1 ~ minecraft:air run scoreboard players set #temp worldtool 1

execute if score #temp worldtool matches 1 run setblock ~ ~1 ~ minecraft:snow
execute if score #temp worldtool matches 1 run scoreboard players add #blocksPlaced worldtool 1

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_example:processes/snow/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_example:processes/snow/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_example:processes/snow/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_example:processes/snow/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_example:processes/snow/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function wt_example:processes/snow/-y

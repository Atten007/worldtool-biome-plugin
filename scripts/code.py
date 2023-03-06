# Generates code

import re

dict = {
    'process_check': 'execute if entity @s[tag=wt_biome.process.biome.replace.%1s] unless entity @s[tag=wt_biome.process.biome.replace.normal,tag=wt_biome.process.biome.place.%1s] if biome ~ ~ ~ minecraft:%1s run scoreboard players add #temp2 worldtool 1',
    'process_place': 'execute if entity @s[tag=wt_biome.process.biome.place.%1s] store success score #temp worldtool run fillbiome ~ ~ ~ ~ ~ ~ minecraft:%1s',
    'translation': (
        'data modify storage worldtool:storage Translation."wt_biome.button.biome.%1s.name" set value "[%3s]"'
        '\n'
        'data modify storage worldtool:storage Translation."wt_biome.biome.%1s" set value "%3s"'
    ),
    'ui_buttons': (
        'execute unless entity @s[tag=wt_biome.replace_biome.%1s,tag=wt_biome.menu.biome.replace] run tellraw @s {"nbt":"Translation.\\"wt_biome.button.biome.%1s.name\\"","storage": "worldtool:storage","color": "#%2s","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\\"wt_biome.button.biome.select.description\\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/biomes/%1s"}}'
        '\n'
        'execute if entity @s[tag=wt_biome.replace_biome.%1s,tag=wt_biome.menu.biome.replace] run tellraw @s ["",{"nbt":"Translation.\\"wt_biome.button.biome.%1s.name\\"","storage": "worldtool:storage","color": "#%2s","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\\"wt_biome.button.biome.unselect.description\\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function wt_biome:ui/general/biome/select/biomes/%1s"}}," ",{"nbt":"Translation.\\"info.selected\\"","storage": "worldtool:storage"}]'
    ),
    'remove_place_tags': 'tag @s remove wt_biome.place_biome.%1s',
    'remove_replace_tags': 'tag @s remove wt_biome.replace_biome.%1s',
    'setup_process_place': 'execute if entity @s[tag=wt_biome.place_biome.%1s] run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.place.%1s"',
    'setup_process_replace': 'execute if entity @s[tag=wt_biome.replace_biome.%1s] run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.replace.%1s"',
    'brush_set_replace': 'execute if entity @s[tag=wt_biome.replace_biome.%1s] run data modify storage worldtool:storage Temp.BiomePlugin.ReplaceBiomes append value "minecraft:%1s"',
    'brush_set_place': 'execute if entity @s[tag=wt_biome.place_biome.%1s] run item modify entity @s weapon.mainhand wt_biome:biomes/%1s',
    'brush_get_replace': 'execute if data storage worldtool:storage Temp.BiomePlugin{ReplaceBiomes:["minecraft:%1s"]} run tag @s add wt_biome.replace_biome.%1s',
    'brush_setup_process_place': 'execute if predicate wt_biome:biomes/%1s run data modify storage worldtool:storage Processes[0].Tags append value "wt_biome.process.biome.place.%1s"'
}

inp = input('\n'.join(dict.keys()) + '\nWhich of the above do you want to generate? ')
biome_match = '^([a-z_]+) ([A-Fa-f0-9]+) ([A-Za-z ]+)$'

alt = dict.get(inp, None)
if (alt != None):
    lines = open('biomes.txt', 'r').readlines()
    output = open('output.txt', 'w')
    
    for line in lines:
        if (line == '' or line == '\n' or line.startswith('#')):
            continue
        match = re.match(biome_match, line)
        output.write(alt.replace('%1s', match[1]).replace('%2s', match[2]).replace('%3s', match[3]) + '\n')

    output.close()
    print('Done!')
else:
    print('Please enter a valid alternative.')

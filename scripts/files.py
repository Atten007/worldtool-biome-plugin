# Generates code

import re
import os.path
import os
import shutil

dict = {
    'ui_button': (
        '# Called by one of the wt_biome:ui/general/biome/select/page functions'
        '\n# Commands to run when the %3s biome button is pressed'
        '\n'
        '\ntag @s[tag=!wt_biome.menu.biome.replace] add wt_biome.place_biome.%1s'
        '\ntag @s[tag=wt_biome.menu.biome.replace,tag=wt_biome.replace_biome.%1s] add wt.temp'
        '\ntag @s[tag=wt_biome.menu.biome.replace,tag=wt.temp] remove wt_biome.replace_biome.%1s'
        '\ntag @s[tag=wt_biome.menu.biome.replace,tag=!wt.temp] add wt_biome.replace_biome.%1s'
        '\ntag @s remove wt.temp'
        '\n'
        '\nfunction wt_biome:ui/general/biome/select/button_common'
    ),
    'brush_modifier': (
        '['
        '\n    {'
        '\n        "function": "minecraft:set_nbt",'
        '\n        "tag": "{WorldTool:{BrushSettings:{BiomePlugin:{Biome:\\"minecraft:%1s\\"}}}}"'
        '\n    },'
        '\n    {'
        '\n        "function": "minecraft:set_lore",'
        '\n        "lore": ['
        '\n            {"nbt":"Translation.\\"lore.selected_brush.none\\"","storage": "worldtool:storage","color": "yellow","italic": false},'
        '\n            {"nbt":"Translation.\\"wt_biome.lore.selected_biome\\"","storage": "worldtool:storage","color": "light_purple","italic": false},'
        '\n            {"nbt":"Translation.\\"wt_biome.biome.%1s\\"","storage": "worldtool:storage","color": "aqua","italic": false},'
        '\n            "",'
        '\n            {"nbt":"Translation.\\"lore.brush.1\\"","storage": "worldtool:storage","interpret": true,"italic": false},'
        '\n            {"nbt":"Translation.\\"lore.brush.2\\"","storage": "worldtool:storage","interpret": true,"italic": false}'
        '\n        ],'
        '\n        "entity": "this",'
        '\n        "replace": true'
        '\n    },'
        '\n    {'
        '\n       "function": "copy_nbt",'
        '\n       "source": {'
        '\n           "type":"minecraft:context",'
        '\n           "target": "this"'
        '\n       },'
        '\n       "ops": ['
        '\n           {'
        '\n           "op": "replace",'
        '\n           "source": "SelectedItem.tag.display.Lore[0]",'
        '\n           "target": "display.Lore[0]"'
        '\n           }'
        '\n       ]'
        '\n    }'
        '\n]'
    ),
    'brush_predicate': (
        '{'
        '\n    "condition": "minecraft:entity_properties",'
        '\n    "entity": "this",'
        '\n    "predicate": {'
        '\n        "equipment": {'
        '\n            "mainhand": {'
        '\n                "nbt": "{WorldTool:{BrushSettings:{BiomePlugin:{Biome:\\"minecraft:%1s\\"}}}}"'
        '\n            }'
        '\n        }'
        '\n    }'
        '\n}'
    )
}


if os.path.isdir('output') and len(os.listdir('output')) > 0:
    if input('"output" path already exists. Delete it? (y/n) ').lower() == 'y':
        shutil.rmtree('output')
    else:
        exit()
if not os.path.isdir('output'):
    os.mkdir('output')
inp = input('\n'.join(dict.keys()) + '\nWhich of the above do you want to generate? ')
ext = input('File extension? ')
biome_match = '^([a-z_]+) ([A-Fa-f0-9]+) ([A-Za-z ]+)$'

alt = dict.get(inp, None)
if (alt != None):
    lines = open('biomes.txt', 'r').readlines()
    
    for line in lines:
        if (line == '' or line == '\n' or line.startswith('#')):
            continue
        match = re.match(biome_match, line)
        output = open('output/' + match[1] + '.' + ext, 'w')
        output.write(alt.replace('%1s', match[1]).replace('%2s', match[2]).replace('%3s', match[3]) + '\n')
        output.close()

    print('Done!')
else:
    print('Please enter a valid alternative.')

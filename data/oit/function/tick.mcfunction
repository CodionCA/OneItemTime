# Give any players that don't have a class the basic survivor class (1) 
execute as @a unless entity @s[scores={classOI=0..}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",components:{"minecraft:custom_model_data":6666}}]}] run give @s written_book[max_stack_size=99,item_name='{"bold":true,"color":"gold","text":"Class Selection"}',lore=['{"text":"Selects what items you recieve."}','[{"text":"Choose "},{"bold":true,"text":"wisely","underlined":true},{"text":"."}]'],rarity="epic",custom_model_data=6666,written_book_content={title:"Class Selection",author:"OI",generation:0,pages:['[{"text":"\\n\\n    Welcome to ","color":"#066CD1","bold":false},{"text":"OIT","color":"gold","bold":true,"underlined":true},{"text":"\\n-------------------","color":"gray"},{"text":"\\n\\nEach minute, every player receives a random drop based on their class (see page two). Special items to enhance your experience are also available this way. Good luck!","color":"#066CD1","bold":false}]','[{"text":"\\n\\n  Class Selection","color":"gold","bold":true},{"text":"\\n----------------","color":"gray"},{"text":"\\n\\nTo choose your class, simply click on the option in the book that corresponds to the class you want. There is a 15 minute cooldown between class changes.","color":"#066CD1","bold":false,"underlined":false}]','[{"text":"\\n\\n    > Survivor <","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 1"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nProvides starter items/the basics to get going quicker.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n   > Equaliser <","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 2"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nThis class offers an equal chance for everything in the game.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n    > Herbalist <","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 3"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nThe drop rates of natural items such as flowers, logs, spawn eggs and food are increased.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n   > Blacksmith <","color":"dark_gray","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 4"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nPrioritises tools, armour, redstone, potions, books, and similar items.","color":"dark_gray","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n     > Builder <","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 5"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nMainly blocks and building materials for construction and crafting.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n      > Bard <","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 6"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nIncreases frequency of drops for music disks, jukeboxes, wool, paintings, and other similar items.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]']}] 1
execute as @a unless entity @s[scores={classOI=0..}] run tellraw @s [{"color":"gray","text":"<"},{"color":"white","text":"OIT"},{"text":"> "},{"bold":true,"color":"gold","text":"Welcome! You can use "},{"clickEvent":{"action":"suggest_command","value":"/trigger givebookOI"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click me!","color":"aqua","bold":true,"italic":false}]},"text":"\"/trigger givebookOI\""},{"bold":true,"color":"gold","text":" to reobtain the class selection book, if needed."}]
execute as @a unless entity @s[scores={classOI=0..}] run scoreboard players set @s classOI 1


#Give book /trigger
scoreboard players enable @a givebookOI
execute as @a if score @s givebookOI matches 1.. run execute unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",components:{"minecraft:custom_model_data":6666}}]}] run give @s written_book[max_stack_size=99,item_name='{"bold":true,"color":"gold","text":"Class Selection"}',lore=['{"text":"Selects what items you recieve."}','[{"text":"Choose "},{"bold":true,"text":"wisely","underlined":true},{"text":"."}]'],rarity="epic",custom_model_data=6666,written_book_content={title:"Class Selection",author:"OI",generation:0,pages:['[{"text":"\\n\\n    Welcome to ","color":"#066CD1","bold":false},{"text":"OIT","color":"gold","bold":true,"underlined":true},{"text":"\\n-------------------","color":"gray"},{"text":"\\n\\nEach minute, every player receives a random drop based on their class (see page two). Special items to enhance your experience are also available this way. Good luck!","color":"#066CD1","bold":false}]','[{"text":"\\n\\n  Class Selection","color":"gold","bold":true},{"text":"\\n----------------","color":"gray"},{"text":"\\n\\nTo choose your class, simply click on the option in the book that corresponds to the class you want. There is a 15 minute cooldown between class changes.","color":"#066CD1","bold":false,"underlined":false}]','[{"text":"\\n\\n    > Survivor <","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 1"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nProvides starter items/the basics to get going quicker.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n   > Equaliser <","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 2"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nThis class offers an equal chance for everything in the game.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n    > Herbalist <","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 3"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nThe drop rates of natural items such as flowers, logs, spawn eggs and food are increased.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n   > Blacksmith <","color":"dark_gray","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 4"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nPrioritises tools, armour, redstone, potions, books, and similar items.","color":"dark_gray","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n     > Builder <","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 5"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nMainly blocks and building materials for construction and crafting.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]','[{"text":"\\n\\n      > Bard <","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Are you sure? There is a 15 minute cooldown!","color":"dark_red","underlined":true}]},"clickEvent":{"action":"run_command","value":"/trigger selectionOI set 6"}},{"text":"\\n----------------","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}},{"text":"\\n\\nIncreases frequency of drops for music disks, jukeboxes, wool, paintings, and other similar items.","bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_red","underlined":true}]}}]']}] 1
execute as @a if score @s givebookOI matches 1.. run scoreboard players set @s givebookOI 0

execute as @a if score @s selectionOI matches 1.. run function oit:selection
scoreboard players enable @a selectionOI

# Cooldown
execute unless score @a[limit=1] timerOI matches 18000.. run scoreboard players add @a[tag=cooldownOI] timerOI 1
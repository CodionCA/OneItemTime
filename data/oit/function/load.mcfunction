#Spawn Platform
setblock 0 90 0 crying_obsidian
execute in minecraft:the_end run forceload add 0 0 0 0
execute in minecraft:the_end run setblock 0 64 0 minecraft:end_stone
execute in minecraft:the_end run forceload remove 0 0
execute in minecraft:the_end run forceload add 100 0 100 0
execute in minecraft:the_end run setblock 100 48 0 minecraft:obsidian
execute in minecraft:the_end run forceload remove 100 0

#Give book trigger
scoreboard objectives add classOI trigger
scoreboard objectives add givebookOI trigger
scoreboard objectives add selectionOI trigger
scoreboard objectives add timerOI dummy
scoreboard objectives add mathOI dummy
scoreboard objectives add minutedisplayOI dummy
scoreboard players set minuteOI mathOI 1200


#teams
team add green
team modify green color green
team add blue
team modify blue color blue
team add light_purple
team modify light_purple color light_purple
team add dark_gray
team modify dark_gray color dark_gray
team add red
team modify red color red
team add dark_aqua
team modify dark_aqua color dark_aqua


#Loop functions
function oit:give_all_players_item
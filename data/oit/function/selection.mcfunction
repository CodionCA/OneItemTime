#Cooldown rm must happen first 
scoreboard players operation @s minutedisplayOI = @s timerOI
scoreboard players operation @s minutedisplayOI /= minuteOI mathOI
execute if score @s timerOI matches 18000.. run tag @s remove cooldownOI
execute if score @s timerOI matches 18000.. run scoreboard players reset @s timerOI
execute as @a if score @s[tag=cooldownOI] selectionOI matches 1.. run execute if score @s timerOI matches 2..17999 run tellraw @s [{"color":"gray","text":"<"},{"color":"white","text":"OIT"},{"text":"> "},{"bold":true,"color":"red","text":"Class changing is on cooldown! "},{"text":"It has been "},{"score":{"name":"*","objective":"minutedisplayOI"}},{"text":" minute(s)."}]


execute as @a if score @s[tag=!cooldownOI] selectionOI matches 1.. run scoreboard players operation @s classOI = @s selectionOI
execute as @a if score @s[tag=!cooldownOI] selectionOI matches 1.. run tellraw @s [{"color":"gray","text":"<"},{"color":"white","text":"OIT"},{"text":"> "},{"bold":true,"color":"gold","text":"Class changed! 15 minute cooldown started."}]

execute as @a if score @s[tag=!cooldownOI] selectionOI matches 1.. run tag @s add cooldownOI

#Selection trigger
execute as @a if score @s classOI matches 1 run team join green @s
execute as @a if score @s classOI matches 2 run team join blue @s
execute as @a if score @s classOI matches 3 run team join light_purple @s
execute as @a if score @s classOI matches 4 run team join dark_gray @s
execute as @a if score @s classOI matches 5 run team join red @s
execute as @a if score @s classOI matches 6 run team join dark_aqua @s

execute as @a if score @s selectionOI matches 1.. run scoreboard players set @s selectionOI 0
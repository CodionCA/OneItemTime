#LOOP AT 1 MINUTE, all the commands and/or the function command in the load function will have to be modified with an execute as to determine if the player has the loot speed increase or not when that is done as i have no clue how ur doin all that
schedule function oit:give_all_players_item 60s replace

title @a actionbar {"color":"#CFFFF9","text":"You have received a new item."}

# Give all players an item based on their class or dimension

# Survivor
execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=1}] run loot give @s loot oit:survivor_loot_table

# Equalizer
execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=2}] run loot give @s loot oit:equalizer_loot_table

# Herbalist
execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=3}] run loot give @s loot oit:herbalist_loot_table

# Smither
execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=4}] run loot give @s loot oit:smither_loot_table

# Builder
execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=5}] run loot give @s loot oit:builder_loot_table

# Bard
execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=6}] run loot give @s loot oit:bard_loot_table

# In the Nether 
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run loot give @s loot oit:while_in_nether_loot_table

# In the End 
execute as @a[nbt={Dimension:"minecraft:the_end"}] run loot give @s loot oit:while_in_end_loot_table
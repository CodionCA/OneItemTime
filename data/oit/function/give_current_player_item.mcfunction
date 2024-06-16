# Survivor
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=1}] run loot give @s loot oit:survivor_loot_table

# Equalizer
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=2}] run loot give @s loot oit:equalizer_loot_table

# Herbalist
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=3}] run loot give @s loot oit:herbalist_loot_table

# Smither
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=4}] run loot give @s loot oit:smither_loot_table

# Builder
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=5}] run loot give @s loot oit:builder_loot_table

# Bard
execute as @s[nbt={Dimension:"minecraft:overworld"}] if entity @s[scores={classOI=6}] run loot give @s loot oit:bard_loot_table

# In the Nether 
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run loot give @s loot oit:while_in_nether_loot_table

# In the End 
execute as @s[nbt={Dimension:"minecraft:the_end"}] run loot give @s loot oit:while_in_end_loot_table
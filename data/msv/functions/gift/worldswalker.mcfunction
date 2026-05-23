tag @s remove portal
execute at @s unless entity @s[nbt={Dimension:"msv:between"}] run function msv:gift/worldswalker/between
execute at @s[tag=!portal,nbt={Dimension:"msv:between"}] if block ~ ~-1 ~ grass_block run function msv:gift/worldswalker/overworld
execute at @s[tag=!portal,nbt={Dimension:"msv:between"}] if block ~ ~-1 ~ netherrack run function msv:gift/worldswalker/nether
execute at @s[tag=!portal,nbt={Dimension:"msv:between"}] if block ~ ~-1 ~ end_stone run function msv:gift/worldswalker/end
tag @s add portal
schedule function msv:core/spreading 1t
advancement revoke @s only msv:ww_chorus_eat
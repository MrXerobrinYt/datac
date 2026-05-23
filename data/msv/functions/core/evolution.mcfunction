scoreboard players add @s InfectionStage 1
tag @s[scores={InfectionStage=1}] add stage1
tag @s[scores={InfectionStage=2}] add stage2
tag @s[scores={InfectionStage=3}] add stage3
attribute @s[scores={InfectionStage=3}] minecraft:generic.max_health base set 18
tag @s[scores={InfectionStage=4}] add stage4
attribute @s[scores={InfectionStage=4}] minecraft:generic.max_health base set 16
execute at @s[scores={InfectionStage=5}] run function msv:infection/mutation
execute at @s[scores={InfectionStage=6}] run function msv:gift/gift
scoreboard players operation @s[scores={InfectionStage=1}] TimeForEvolution = DurationStage2 config
scoreboard players operation @s[scores={InfectionStage=2}] TimeForEvolution = DurationStage3 config
scoreboard players operation @s[scores={InfectionStage=3}] TimeForEvolution = DurationStage4 config
scoreboard players operation @s[scores={InfectionStage=4}] TimeForEvolution = DurationMutation config
scoreboard players operation @s[scores={InfectionStage=5}] TimeForEvolution = DurationGift config
scoreboard players set @s[scores={InfectionStage=6}] TimeForEvolution -1
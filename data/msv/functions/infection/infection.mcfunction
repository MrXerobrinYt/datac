scoreboard players operation @s ScoreBlindness = StartRandomDebuff config
scoreboard players operation @s ScoreNausea = StartRandomDebuff config
scoreboard players operation @s ScoreSlowness = StartRandomDebuff config
scoreboard players operation @s ScoreSneeze = StartRandomDebuff config
scoreboard players operation @s ScoreMiningFatigue = StartRandomDebuff config
scoreboard players operation @s ScoreCreeper = StartRandomDebuff config
scoreboard players operation @s ScoreFrozen = StartRandomDebuff config
scoreboard players operation @s CureCoolDown = DurationCureCoolDown config
scoreboard players operation @s TimeForEvolution = DurationStage1 config
scoreboard players reset @s Risk
tag @s add infected
scoreboard players set infectedpresence globaldata 1
effect clear @a luck
scoreboard players set @s Frozen 0
function msv:core/random0_15
scoreboard players operation @s ScoreForozen = StepRandomDebuff config
scoreboard players operation @s ScoreForozen *= Var16 globaldata
scoreboard players operation @s ScoreForozen += StartRandomDebuff config
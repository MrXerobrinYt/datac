effect give @s minecraft:blindness 5 0 true
function msv:core/random0_15
scoreboard players operation @s ScoreBlindness = StepRandomDebuff config
scoreboard players operation @s ScoreBlindness *= Var16 globaldata
scoreboard players operation @s ScoreBlindness += StartRandomDebuff config
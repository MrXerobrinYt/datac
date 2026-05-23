effect give @s minecraft:slowness 15 0 true
function msv:core/random0_15
scoreboard players operation @s ScoreSlowness = StepRandomDebuff config
scoreboard players operation @s ScoreSlowness *= Var16 globaldata
scoreboard players operation @s ScoreSlowness += StartRandomDebuff config
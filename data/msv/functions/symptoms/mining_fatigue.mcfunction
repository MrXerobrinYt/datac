effect give @s minecraft:mining_fatigue 7 0 true
function msv:core/random0_15
scoreboard players operation @s ScoreMiningFatigue = StepRandomDebuff config
scoreboard players operation @s ScoreMiningFatigue *= Var16 globaldata
scoreboard players operation @s ScoreMiningFatigue += StartRandomDebuff config
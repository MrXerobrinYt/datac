effect give @s minecraft:nausea 20 0 true
function msv:core/random0_15
scoreboard players operation @s ScoreNausea = StepRandomDebuff config
scoreboard players operation @s ScoreNausea *= Var16 globaldata
scoreboard players operation @s ScoreNausea += StartRandomDebuff config
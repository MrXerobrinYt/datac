effect clear @s nausea
effect clear @s blindness
effect clear @s slowness
effect clear @s hunger
attribute @s generic.max_health base set 20
execute if score LimitFixationOn config matches 1 run scoreboard players add FixationCount globaldata 1
scoreboard players reset @s CureCoolDown
scoreboard players reset @s Immunitet
scoreboard players reset @s PastTime
scoreboard players reset @s InfectionStage
scoreboard players reset @s ScoreSneeze
scoreboard players reset @s ScoreBlindness
scoreboard players reset @s ScoreSlowness
scoreboard players reset @s ScoreNausea
scoreboard players reset @s ScoreMiningFatigue
scoreboard players reset @s ScoreCreeper
scoreboard players reset @s ScoreFrozen
execute if entity @s[tag=infected] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
execute if entity @s[tag=infected] run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
tag @s remove stage1
tag @s remove stage2
tag @s remove stage3
tag @s remove stage4
tag @s remove infected
tag @s add fixed
effect clear @a unluck
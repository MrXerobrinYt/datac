attribute @s generic.max_health base set 20
scoreboard players reset @s ScoreSneeze
scoreboard players reset @s ScoreBlindness
scoreboard players reset @s ScoreSlowness
scoreboard players reset @s ScoreNausea
scoreboard players reset @s ScoreMiningFatigue
scoreboard players reset @s ScoreCreeper
scoreboard players reset @s ScoreFrozen
scoreboard players reset @s PastTime
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
tag @s remove stage1
tag @s remove stage2
tag @s remove stage3
tag @s remove stage4
advancement revoke @s only msv:rollback_infection
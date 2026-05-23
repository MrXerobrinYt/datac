effect clear @s nausea
effect clear @s blindness
effect clear @s slowness
effect clear @s hunger
attribute @s generic.max_health base set 20
scoreboard players reset @s Drying
scoreboard players reset @s Decay
scoreboard players reset @s PastTime
scoreboard players reset @s InfectionStage
scoreboard players reset @s ScoreSneeze
scoreboard players reset @s ScoreBlindness
scoreboard players reset @s ScoreSlowness
scoreboard players reset @s ScoreNausea
scoreboard players reset @s ScoreMiningFatigue
scoreboard players reset @s ScoreCreeper
scoreboard players reset @s ScoreFrozen
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
playsound block.beacon.activate player @a ~ ~ ~
tag @s remove stage1
tag @s remove stage2
tag @s remove stage3
tag @s remove stage4
tag @s remove mutated
tag @s remove hydrofob
tag @s remove vampire
tag @s remove fallen
tag @s remove ghoul
tag @s remove amphibian
tag @s remove nosymptoms
tag @s remove worldswalker
tag @s remove portal
tag @s remove infected
tag @s add recovered
scoreboard players operation @s Immunitet = DurationImmunitet config
effect clear @a unluck
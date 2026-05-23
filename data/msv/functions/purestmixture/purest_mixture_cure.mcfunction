particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~
effect clear @s nausea
effect clear @s blindness
effect clear @s slowness
effect clear @s hunger
attribute @s generic.max_health base set 20
scoreboard players operation @s Immunitett = DurationImmunitet config
scoreboard players reset @s Drying
scoreboard players reset @s Decay
scoreboard players reset @s InfectionStage
scoreboard players reset @s ScoreSneeze
scoreboard players reset @s ScoreBlindness
scoreboard players reset @s ScoreSlowness
scoreboard players reset @s ScoreNausea
scoreboard players reset @s ScoreMiningFatigue
scoreboard players reset @s ScoreCreeper
scoreboard players reset @s ScoreFrozen
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
tag @s remove gift
tag @s remove under_the_umbrella
tag @s add recovered
tag @s add VirusImmunitet
scoreboard players set @s CureCoolDown 0
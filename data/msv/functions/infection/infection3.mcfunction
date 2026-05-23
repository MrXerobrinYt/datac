scoreboard players set @s Immunitet 0
scoreboard players set @s InfectionStage 5
attribute @s minecraft:generic.max_health base set 16
function msv:infection/infection
function msv:infection/mutation
tag @s add stage1
tag @s add stage2
tag @s add stage3
tag @s add stage4
scoreboard players operation @s TimeForEvolution = DurationGift config
tag @s remove VirusImmunitet
effect give @s minecraft:instant_damage 1 25 true
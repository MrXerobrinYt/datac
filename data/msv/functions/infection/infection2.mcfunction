scoreboard players set @s Immunitet 0
scoreboard players set @s InfectionStage 3
attribute @s minecraft:generic.max_health base set 16
function msv:infection/infection
tag @s add stage1
tag @s add stage2
tag @s add stage3
scoreboard players operation @s TimeForEvolution = Durationstage4 config
effect clear @a unluck
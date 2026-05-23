function msv:core/random0_15
execute if predicate msv:0_1chance run scoreboard players add Var16 globaldata 16
execute if score Var16 globaldata matches 0..5 run tag @s add hydrofob
execute if score Var16 globaldata matches 6..12 run tag @s add vampire
execute if score Var16 globaldata matches 13..20 run tag @s add fallen
execute if score Var16 globaldata matches 21..24 run tag @s add ghoul
execute if score Var16 globaldata matches 25..28 run tag @s add amphibian
execute if score Var16 globaldata matches 29..30 run tag @s add nosymptoms
execute if score Var16 globaldata matches 31 run tag @s add worldswalker
execute if score Var16 globaldata matches 31 run tag @s add portal
tag @s add mutated
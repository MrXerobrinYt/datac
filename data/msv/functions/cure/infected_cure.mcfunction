function msv:core/random0_15
execute if score Var16 globaldata matches 0..2 run scoreboard players operation @s TimeForEvolution -= PanaceaInfection config
execute if score Var16 globaldata matches 3..15 run function msv:cure/cure
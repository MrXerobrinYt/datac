function msv:core/random0_15
execute if score Var16 globaldata matches 0..2 run function msv:infection/infection2
execute if score Var16 globaldata matches 3..15 run scoreboard players operation @s Immunitet = DurationImmunitet config
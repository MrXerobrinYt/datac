function msv:core/random0_15
execute at @s[tag=infected,tag=CureCoolDown,nbt={ActiveEffects:[{Id:27}]}] if score Var16 globaldata matches 3..15 run function msv:cure/debuff
execute at @s[tag=infected,tag=!CureCoolDown,nbt={ActiveEffects:[{Id:27}]}] if score Var16 globaldata matches 3..15 run function msv:cure/infected_cure
execute at @s[tag=!infected,tag=Immunitet,nbt={ActiveEffects:[{Id:27}]}] if score Var16 globaldata matches 3..15 run scoreboard players operation @s Immunitet = DurationImmunitet config
execute at @s[tag=!infected,tag=!Immunitet,nbt={ActiveEffects:[{Id:27}]}] if score Var16 globaldata matches 3..15 run function msv:cure/uninfected_cure
effect clear @s unluck
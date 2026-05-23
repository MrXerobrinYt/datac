function msv:core/random0_15
scoreboard players operation Var globaldata = StepTimeZombieSpawn config
scoreboard players operation Var globaldata *= Var16 globaldata
scoreboard players operation SpawnZombieTime globaldata = StartTimeZombieSpawn config
scoreboard players operation SpawnZombieTime globaldata += Var globaldata
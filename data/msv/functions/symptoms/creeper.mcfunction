execute as @s[nbt={Dimension:"minecraft:overworld"}] run playsound minecraft:entity.creeper.primed master @s ^0.76 ^-2 ^ 1 0.5
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run playsound minecraft:entity.ghast.warn master @s ^0.76 ^2 ^
execute as @s[nbt={Dimension:"minecraft:the_end"}] run playsound minecraft:entity.enderman.stare master @s ^0.79 ^-2 ^
function msv:core/random0_15
scoreboard players operation @s ScoreCreeper = StepRandomDebuff config
scoreboard players operation @s ScoreCreeper *= Var16 globaldata
scoreboard players operation @s ScoreCreeper += StartRandomDebuff config
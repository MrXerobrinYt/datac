playsound entity.panda.sneeze master @a ~ ~ ~ 2 0.75 0
execute as @s[nbt={Inventory:[{Slot:103b,tag:{tag:["hazmat"]}}]}] run tag @s add mask
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]} run tag @s add bottle
execute if data entity @s {SelectedItem:{id:"minecraft:glass_bottle"}} run tag @s add bottle
clear @s[tag=bottle,tag=!mask] minecraft:glass_bottle 1
execute at @s[tag=!mask,tag=!gift] run function msv:symptoms/sneeze
execute at @s[tag=!mask,tag=gift] run function msv:symptoms/black_sneeze
effect give @s[tag=mask] minecraft:blindness 2 0
tag @s remove mask
tag @s remove bottle
function msv:core/random0_15
scoreboard players operation @s[tag=!recovered] ScoreSneeze = StepRandomDebuff config
scoreboard players operation @s[tag=recovered] ScoreSneeze = RecoveredStepSneeze config
scoreboard players operation @s ScoreSneeze *= Var16 globaldata
scoreboard players operation @s[tag=!recovered] ScoreSneeze += StartRandomDebuff config
scoreboard players operation @s[tag=recovered] ScoreSneeze += RecoveredStartSneeze config
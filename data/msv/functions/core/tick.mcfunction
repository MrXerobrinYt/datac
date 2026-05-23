scoreboard players add second globaldata 1

execute if score second globaldata matches 20.. run function msv:core/second
execute as @a as @s if score @s ScoreFrozen >= @s RandomFrozen run function msv:symptoms/frozen

execute as @a[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[{Id:26,Duration:200,Amplifier:6b}]}}]}] at @s run function msv:core/replacevirusarrow
execute as @a[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[{Id:26,Duration:200,Amplifier:7b}]}}]}] at @s run function msv:core/replacevirusarrow
execute as @a[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[{Id:27,Duration:200,Amplifier:6b}]}}]}] at @s run function msv:core/replaceantidotarrow
execute as @a[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[{Id:27,Duration:200,Amplifier:7b}]}}]}] at @s run function msv:core/replaceantidotarrow

execute as @a[tag=stage2] as @s if score @s PastHealth > @s Health run effect give @s minecraft:blindness 3 1 true
execute as @a as @s run scoreboard players operation @s PastHealth = @s Health

tag @a[tag=ghoul,nbt={ActiveEffects:[{Id:17}]}] remove unhunger
tag @a[tag=ghoul,nbt=!{ActiveEffects:[{Id:17}]}] add unhunger

execute as @a as @s store result score @s Air run data get entity @s Air 1

execute store result score Time globaldata run time query daytime
execute if score Time globaldata matches 0 run scoreboard players add Day globaldata 1

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Tags:["umbrella"]}}]},tag=vampire] run tag @s add under_the_umbrella

execute at @a[tag=infected,tag=!inHazmat,tag=!gift] run scoreboard players operation @a[tag=!fixed,tag=!inHazmat,tag=!Immunitet,distance=..7,tag=!infected,tag=!VirusImmunitet] Risk += PlayerAddRisk config
execute at @e[tag=infectedzombie] run scoreboard players operation @a[tag=!fixed,tag=!inHazmat,tag=!Immunitet,distance=..7,tag=!infected,tag=!VirusImmunitet] Risk += ZombieAddRisk config
scoreboard players operation @a[scores={Risk=1..}] Risk -= RemoveRisk config

execute as @a as @s store result score @s FallDistance run data get entity @s FallDistance 1
execute as @a[tag=fallen,tag=gift] as @s[scores={FallDistance=1..}] run data merge entity @s {FallDistance:0}
execute as @a[tag=hydrofob,tag=gift,scores={Fireresist=3..}] as @s if predicate msv:onfire run effect give @s minecraft:fire_resistance 2 0 true

execute as @a at @s if block ~ ~-1 ~ minecraft:soul_campfire if block ~ ~-2 ~ minecraft:hay_block run scoreboard players add @s VirusTest 11
execute as @a[scores={VirusTest=1..}] run scoreboard players remove @s VirusTest 10
execute as @a[tag=infected,scores={VirusTest=1200..}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 1 normal
execute as @a[tag=Immunitet,scores={VirusTest=1200..}] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.005 1 normal
execute as @a[tag=VirusImmunitet,scores={VirusTest=1200..}] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.005 1 normal

execute unless score infectedpresence globaldata matches 1 if score Day globaldata matches 25.. if score Time globaldata = SpawnZombieTime globaldata at @r[limit=1,nbt={Dimension:"minecraft:overworld"}] run function msv:core/zombiespawn
execute if score Time globaldata matches 1 run function msv:core/randomtime
execute unless score ZombieParticles config matches 0 at @e[tag=infectedzombie] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 1 normal
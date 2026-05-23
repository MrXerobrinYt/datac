execute as @a[tag=hydrofob,tag=gift,nbt=!{ActiveEffects:[{Id:12}]}] at @s if score @s Fireresist <= HydrofobMaxTime-1 config unless predicate msv:onfire run scoreboard players add @s Fireresist 1
scoreboard players remove @a[scores={Immunitet=1..}] Immunitet 1
scoreboard players remove @a[tag=stage1] ScoreSneeze 1
scoreboard players remove @a[tag=!gift,tag=stage4] ScoreBlindness 1
scoreboard players remove @a[tag=!gift,tag=stage4] ScoreNausea 1
scoreboard players remove @a[tag=!gift,tag=stage4] ScoreSlowness 1
scoreboard players remove @a[tag=!gift,tag=stage4] ScoreMiningFatigue 1
scoreboard players remove @a[tag=!gift,tag=stage3] ScoreCreeper 1
scoreboard players remove @a[tag=!gift,tag=stage4] ScoreFrozen 1
scoreboard players remove @a[tag=infected] TimeForEvolution 1
scoreboard players remove @a[scores={CureCoolDown=1..}] CureCoolDown 1
scoreboard players add @a[nbt={Dimension:"msv:between"}] Decay 13
scoreboard players remove @a[scores={Decay=1..}] Decay 1
scoreboard players add @a[tag=amphibian] Drying 1
execute as @a[scores={Drying=1..}] at @s if predicate msv:water run scoreboard players remove @s Drying 6
execute as @a as @s[tag=amphibian,scores={usepotion=1..,Drying=1..}] run scoreboard players remove @s Drying 30
scoreboard players set @a usepotion 0
execute as @a[scores={Death=1..}] as @s run function msv:core/deathresetscores

execute as @a at @s if score @s ScoreSneeze matches ..0 run function msv:symptoms/sneeze_select
execute as @a as @s if score @s ScoreBlindness matches ..0 run function msv:symptoms/blindness
execute as @a as @s if score @s ScoreNausea matches ..0 run function msv:symptoms/nausea
execute as @a as @s if score @s ScoreSlowness matches ..0 run function msv:symptoms/slowness
execute as @a as @s if score @s ScoreMiningFatigue matches ..0 run function msv:symptoms/mining_fatigue
execute as @a at @s if score @s ScoreCreeper matches ..0 run function msv:symptoms/creeper

execute as @a[nbt={ActiveEffects:[{Id:27}]}] as @s run function msv:cure/pre_cure_select
execute as @a[nbt={ActiveEffects:[{Id:26}]}] as @s run function msv:infection/infection_select

execute as @a as @s if score @s Risk >= InfectionRisk config run function msv:infection/infection
execute at @e[type=minecraft:item,tag=infectedrottenflesh] as @a[distance=..7,tag=!fixed,tag=!infected,tag=!VirusProtection] as @s run function msv:infection/infection

execute as @a[tag=infected] at @s if score @s TimeForEvolution matches 0 run function msv:core/evolution

execute as @a as @s run function msv:core/check

effect give @a[tag=stage4,tag=!gift] minecraft:weakness 10 0 true

execute as @a[tag=hydrofob] at @s if predicate msv:water run function msv:core/mutationdamage
execute as @a[tag=fallen,scores={ElytraUse=1..}] as @s run function msv:core/mutationdamage
scoreboard players reset @a ElytraUse
execute as @a[tag=vampire,tag=!under_the_umbrella] at @s if predicate msv:under_sun run data merge entity @s {Fire:25}
execute as @a at @s[tag=vampire,tag=under_the_umbrella] run effect give @s slowness 2 2 true
tag @a[tag=vampire] remove under_the_umbrella

execute as @a[scores={Drying=600..}] run function msv:core/amphibian_debuff
execute as @a[scores={Decay=600..}] run function msv:core/worldswalker_debuff

tag @a remove inHazmat
tag @a remove inArmedHazmat
tag @a[nbt={Inventory:[{Slot:100b,tag:{tag:["hazmat"]}},{Slot:101b,tag:{tag:["hazmat"]}},{Slot:102b,tag:{tag:["hazmat"]}},{Slot:103b,tag:{tag:["hazmat"]}}]}] add inHazmat
tag @a[nbt={Inventory:[{Slot:100b,tag:{tag:["armed"]}},{Slot:101b,tag:{tag:["armed"]}},{Slot:102b,tag:{tag:["armed"]}},{Slot:103b,tag:{tag:["armed"]}}]}] add inArmedHazmat
tag @a[scores={Immunitet=0}] remove Immunitet
tag @a[scores={Immunitet=1..}] add Immunitet

execute as @a[tag=hydrofob,tag=gift] at @s if score @s Fireresist >= HydrofobHz config if predicate msv:onfire run function msv:gift/hydrofob
execute as @a at @s[tag=vampire,tag=gift,scores={Health=..15}] if score @s Damage >= VampireDamageToHp config run function msv:gift/vampire
execute as @a[tag=ghoul,tag=gift] at @s unless score @s Food matches 20.. if entity @e[type=minecraft:zombie,distance=..1.5] run function msv:gift/ghoul
execute as @a[tag=amphibian,tag=gift] at @s if score @s Air matches ..10 if score @s Air+ matches 1.. run function msv:gift/air-
execute as @a[tag=amphibian,tag=gift] as @s if score @s Air matches 300 if score @s Air+ <= AmphibianExtraAir-1 config run function msv:gift/air

execute if score Time globaldata matches 23500.. run tp @e[tag=infectedzombie] ~ -80 ~

execute as @a[scores={VirusTest=..-1}] run scoreboard players set @s VirusTest 0
execute as @a[scores={VirusTest=1210..}] run scoreboard players set @s VirusTest 1210

kill @e[type=minecraft:item,tag=infectedrottenflesh]

scoreboard players set second globaldata 0
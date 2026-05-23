tag @s[scores={Immunitet=0..}] add inSection
scoreboard players set @s[tag=!inSection] Immunitet 0
tag @s remove inSection

tag @s[scores={Fireresist=0..}] add inSection
scoreboard players set @s[tag=!inSection] Fireresist 0
tag @s remove inSection

tag @s[scores={CureCoolDown=0..}] add inSection
scoreboard players set @s[tag=!inSection] CureCoolDown 0
tag @s remove inSection

tag @s[scores={Air+=0..}] add inSection
scoreboard players set @s[tag=!inSection] Air+ 0
tag @s remove inSection

tag @s[scores={Immunitett=0..}] add inSection
scoreboard players set @s[tag=!inSection] Immunitett 0
tag @s remove inSection

tag @s[scores={CureCoolDown=0}] remove CureCoolDown
tag @s[scores={CureCoolDown=1..}] add CureCoolDown

tag @s[scores={Immunitett=0}] remove Immunitett
tag @s[scores={Immunitett=1..}] add Immunitett

tag @s[tag=infected,tag=!mutated] add unmutated
tag @s[tag=mutated] remove unmutated
tag @s[tag=!infected] remove unmutated

execute as @s[scores={InfectionStage=3..}] store result score @s HealthF run attribute @s minecraft:generic.max_health get
execute as @s[scores={InfectionStage=3,HealthF=20}] run attribute @s minecraft:generic.max_health base set 18
execute as @s[scores={InfectionStage=4..,HealthF=20}] run attribute @s minecraft:generic.max_health base set 16
tag @e[type=minecraft:zombie,limit=1,distance=..1.5] add food
playsound minecraft:entity.player.burp voice @a ~ ~ ~
execute as @e[tag=food] at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.25 0.5 0.25 0 40
kill @e[tag=food]
scoreboard players operation @s FoodF = @s Food
scoreboard players operation @s FoodF += GhoulZombieFood config
execute if score @s FoodF matches 21.. run scoreboard players set @s FoodF 20
execute store result entity @s foodLevel int 1 run scoreboard players get @s FoodF
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 15 normal
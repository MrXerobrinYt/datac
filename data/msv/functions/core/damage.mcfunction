execute store result score @s HealthF run data get entity @s Health 100
scoreboard players operation @s HealthF -= @s GetDamage
execute as @s if score @s HealthF matches 1.. store result entity @s Health float 0.01 run scoreboard players get @s HealthF
execute as @s unless score @s HealthF matches 1.. run effect give @s minecraft:instant_damage 1 10 true
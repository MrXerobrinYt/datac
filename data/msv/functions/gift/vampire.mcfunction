execute if score @s Damage >= VampireMaxDamage config run scoreboard players operation @s Damage = VampireMaxDamage config
scoreboard players operation @s HealthF = @s Health
scoreboard players add @s HealthF 1
scoreboard players operation @s Damage -= VampireDamageToHp config
execute store result entity @s Health float 1 run scoreboard players get @s HealthF
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.005 15 normal
scoreboard players add @s Frozen 1
execute store result entity @s TicksFrozen int 1 run scoreboard players get @s Frozen
execute if score @s Frozen matches 160.. run function msv:symptoms/frozen_reset
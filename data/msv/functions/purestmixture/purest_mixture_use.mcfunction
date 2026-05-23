execute at @s[tag=!mutated] run particle minecraft:angry_villager ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
execute at @s[tag=fixed] run particle minecraft:angry_villager ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
tag @s[tag=mutated,tag=!fixed] add aboba
execute at @s[tag=mutated,tag=!fixed] run function msv:purestmixture/purest_mixture_cure
advancement revoke @s only msv:purest_mixture_use_sub
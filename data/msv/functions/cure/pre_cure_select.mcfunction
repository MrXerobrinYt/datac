execute at @s[tag=!gift,tag=!VirusImmunitet,tag=!fixed,nbt={ActiveEffects:[{Id:27,Amplifier:5b}]}] run function msv:cure/cure_select
execute at @s[tag=!gift,tag=!VirusImmunitet,tag=!fixed,tag=!inHazmat,nbt={ActiveEffects:[{Id:27,Amplifier:6b}]}] run function msv:cure/cure_select
execute at @s[tag=!gift,tag=!VirusImmunitet,tag=!fixed,tag=!inArmedHazmat,nbt={ActiveEffects:[{Id:27,Amplifier:7b}]}] run function msv:cure/cure_select
execute at @s[tag=!fixed,nbt={ActiveEffects:[{Id:27,Amplifier:8b}]}] run function msv:cure/pre_fixation
execute at @s[nbt={ActiveEffects:[{Id:27}]}] run particle minecraft:angry_villager ~ ~1 ~ 0.3 0.5 0.3 0.005 40 normal
effect clear @s unluck
execute at @s[nbt={ActiveEffects:[{Id:27}]}] unless score FixationCount globaldata >= LimitFixation config run function msv:cure/fixation
execute at @s[nbt={ActiveEffects:[{Id:27}]}] if score LimitFixationOn config matches 0 unless score FixationCount globaldata < LimitFixation config run function msv:cure/fixation
execute at @s[nbt={ActiveEffects:[{Id:27}]}] run function msv:cure/debuff
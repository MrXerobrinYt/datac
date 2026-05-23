summon minecraft:zombie ~ ~10 ~ {NoAI:1b,Invisible:1b,Tags:["infectedzombie"],Attributes:[{Name:"generic.follow_range",Base:64}],ArmorItems:[{},{id:"minecraft:rotten_flesh",Count:1,tag:{Tags:["infectedrottenflesh"]}},{},{},{}],ArmorDropChances:[0F,1F,0F,0F]}
spreadplayers ~ ~ 5 10 false @e[tag=infectedzombie]
schedule function msv:core/visiblezombie 1s
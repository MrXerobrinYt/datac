scoreboard objectives add globaldata dummy
scoreboard objectives add config dummy
scoreboard objectives add Risk dummy
scoreboard objectives add InfectionStage dummy
scoreboard objectives add TimeForEvolution dummy
scoreboard objectives add ScoreSneeze dummy
scoreboard objectives add ScoreBlindness dummy
scoreboard objectives add ScoreNausea dummy
scoreboard objectives add ScoreSlowness dummy
scoreboard objectives add ScoreMiningFatigue dummy
scoreboard objectives add ScoreCreeper dummy
scoreboard objectives add ScoreFrozen dummy
scoreboard objectives add Immunitet dummy
scoreboard objectives add Immunitett dummy
scoreboard objectives add VirusTest dummy
scoreboard objectives add CureCoolDown dummy
scoreboard objectives add Frozen dummy
scoreboard objectives add Drying dummy
scoreboard objectives add Fireresist dummy
scoreboard objectives add PastHealth dummy
scoreboard objectives add HealthF dummy
scoreboard objectives add Health health
scoreboard objectives add FoodF dummy
scoreboard objectives add Food food
scoreboard objectives add FallDistance dummy
scoreboard objectives add Air dummy
scoreboard objectives add Air+ dummy
scoreboard objectives add Death deathCount
scoreboard objectives add GetDamage dummy
scoreboard objectives add Decay dummy
scoreboard objectives add Damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ElytraUse minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add usepotion minecraft.used:minecraft.potion

execute unless score setconfig globaldata matches 1 run function msv:core/reset_config

tellraw @a {"text":"   MSV датапак запущен","color":"yellow"}
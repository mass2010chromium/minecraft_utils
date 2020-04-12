team add Enemies "Enemies"
team modify Enemies color red
team modify Enemies friendlyFire false
team modify Enemies collisionRule pushOtherTeams 
team add Friendlies "Friendlies"
team modify Friendlies color green
team modify Friendlies seeFriendlyInvisibles true
team modify Friendlies friendlyFire false
team modify Friendlies collisionRule never 
scoreboard objectives add current_region dummy
scoreboard objectives add persistence dummy 
scoreboard objectives add replenish_ok dummy 
scoreboard objectives add spell.1.power dummy
scoreboard objectives add spell.4.power dummy
scoreboard objectives add spell.0.power dummy
scoreboard objectives add spell.3.power dummy
scoreboard objectives add spell.2.power dummy 
scoreboard objectives add spell.6.power dummy 
scoreboard objectives add spell.7.power dummy
scoreboard objectives add spell.9.power dummy
scoreboard objectives add spell.9.time dummy 
scoreboard objectives add use.golden_hoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add use.stone_sword minecraft.used:minecraft.stone_sword 
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule doLimitedCrafting true
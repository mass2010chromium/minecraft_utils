team add Enemies "Enemies"
team modify Enemies color red
team modify Enemies friendlyFire false
team modify Enemies collisionRule pushOtherTeams 
team add Friendlies "Friendlies"
team modify Friendlies color green
team modify Friendlies seeFriendlyInvisibles true
team modify Friendlies friendlyFire false
team modify Friendlies collisionRule pushOtherTeams 
scoreboard objectives add replenish_ok dummy 
scoreboard objectives add spell.0.power dummy
scoreboard objectives add spell.1.power dummy 
scoreboard objectives remove use.golden_hoe
scoreboard objectives add use.golden_hoe minecraft.used:minecraft.golden_hoe
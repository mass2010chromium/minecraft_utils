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
scoreboard objectives add spell.2.power dummy
scoreboard objectives add spell.5.power dummy
scoreboard objectives add spell.0.power dummy
scoreboard objectives add spell.4.power dummy
scoreboard objectives add spell.3.power dummy 
scoreboard objectives add spell.7.power dummy 
scoreboard objectives add spell.8.power dummy
scoreboard objectives add spell.9.power dummy 
scoreboard objectives add spell.10.power dummy
scoreboard objectives add spell.10.time dummy 
scoreboard objectives add spell.11.power dummy
scoreboard objectives add spell.11.uses dummy
scoreboard objectives add spell.11.time dummy 
scoreboard objectives add blaze.m_splash dummy
scoreboard objectives add blaze.p_splash dummy 
scoreboard objectives add rangedCooldown dummy
scoreboard objectives add rangedCDBase dummy
scoreboard objectives add rangedPD dummy
scoreboard objectives add rangedMD dummy 
scoreboard objectives add chargeCooldown dummy
scoreboard objectives add chargeCDBase dummy
scoreboard objectives add chargePD dummy
scoreboard objectives add chargeMD dummy
scoreboard objectives add chargeVY dummy
scoreboard objectives add chargeVX dummy 
scoreboard objectives add blink minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add _blink trigger 
scoreboard objectives add use.stone_hoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add use.golden_hoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add use.iron_hoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add use.diam_hoe minecraft.used:minecraft.diamond_hoe 
scoreboard objectives add use.stone_sword minecraft.used:minecraft.stone_sword
scoreboard objectives add use.golden_sword minecraft.used:minecraft.golden_sword
scoreboard objectives add use.iron_sword minecraft.used:minecraft.iron_sword
scoreboard objectives add use.diam_sword minecraft.used:minecraft.diamond_sword 
scoreboard objectives add shield_used minecraft.custom:minecraft.damage_blocked_by_shield 
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule doLimitedCrafting true
gamerule keepInventory true
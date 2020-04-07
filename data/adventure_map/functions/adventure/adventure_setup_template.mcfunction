team add ##enemies## "Enemies"
team modify ##enemies## color red
team modify ##enemies## friendlyFire false
team modify ##enemies## collisionRule pushOtherTeams

team add ##friendlies## "Friendlies"
team modify ##friendlies## color green
team modify ##friendlies## seeFriendlyInvisibles true
team modify ##friendlies## friendlyFire false
team modify ##friendlies## collisionRule pushOtherTeams

scoreboard objectives add replenish_ok dummy

scoreboard objectives add ##mage_fireball_power## dummy
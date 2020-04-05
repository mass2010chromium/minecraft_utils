me Setting up fine_hp...
scoreboard objectives remove stat.health
scoreboard objectives add stat.health health
scoreboard objectives remove fine_hp.dt
scoreboard objectives add fine_hp.dt dummy
scoreboard objectives remove fine_hp.die
scoreboard objectives add fine_hp.die deathCount
scoreboard objectives remove stat.hunger
scoreboard objectives add stat.hunger food
scoreboard objectives remove fine_hp.hp
scoreboard objectives add fine_hp.hp dummy "Health"
scoreboard objectives setdisplay list fine_hp.hp
scoreboard objectives setdisplay belowname fine_hp.hp
scoreboard objectives remove fine_hp.prev_hp
scoreboard objectives add fine_hp.prev_hp dummy
scoreboard objectives remove fine_hp.mh
scoreboard objectives add fine_hp.mh dummy
scoreboard objectives remove fine_hp.regt
scoreboard objectives add fine_hp.regt dummy
scoreboard objectives remove fine_hp.ramt
scoreboard objectives add fine_hp.ramt dummy
scoreboard objectives remove fine_hp.regfreq
scoreboard objectives add fine_hp.regfreq dummy
scoreboard objectives remove fine_hp.hpct
scoreboard objectives add fine_hp.hpct dummy
scoreboard objectives remove fine_hp.hp_frac
scoreboard objectives add fine_hp.hp_frac dummy
scoreboard objectives remove fine_hp.dispT
scoreboard objectives add fine_hp.dispT dummy
scoreboard objectives remove fine_hp.tmp0
scoreboard objectives add fine_hp.tmp0 dummy
scoreboard objectives remove fine_hp.tmp1
scoreboard objectives add fine_hp.tmp1 dummy
scoreboard objectives remove fine_hp.tmp2
scoreboard objectives add fine_hp.tmp2 dummy
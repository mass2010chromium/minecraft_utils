me Setting up fine_hp...
scoreboard objectives add stat.health health 
scoreboard objectives add fine_hp.dt dummy 
scoreboard objectives add fine_hp.die deathCount 
scoreboard objectives add stat.hunger food 
scoreboard objectives add fine_hp.hp dummy "Health"
scoreboard objectives setdisplay list fine_hp.hp
scoreboard objectives setdisplay belowname fine_hp.hp 
scoreboard objectives remove damage_blocked
scoreboard objectives add damage_blocked minecraft.custom:minecraft.damage_resisted 
scoreboard objectives add fine_hp.prev_hp dummy 
scoreboard objectives add fine_hp.skhack dummy 
scoreboard objectives add fine_hp.mh dummy
scoreboard objectives add fine_hp.mh_base dummy 
scoreboard objectives add fine_hp.invul dummy 
scoreboard objectives remove fine_hp.dmg
scoreboard objectives add fine_hp.dmg dummy 
scoreboard objectives remove fine_hp.mdmg
scoreboard objectives add fine_hp.mdmg dummy 
scoreboard objectives remove fine_hp.dmgr
scoreboard objectives add fine_hp.dmgr dummy 
scoreboard objectives remove fine_hp.mdmgr
scoreboard objectives add fine_hp.mdmgr dummy 
scoreboard objectives add fine_hp.dmgrb dummy 
scoreboard objectives add fine_hp.mdmgrb dummy 
scoreboard objectives remove fine_hp.regt
scoreboard objectives add fine_hp.regt dummy 
scoreboard objectives remove fine_hp.potreg
scoreboard objectives add fine_hp.potreg dummy 
scoreboard objectives remove fine_hp.ramt
scoreboard objectives add fine_hp.ramt dummy 
scoreboard objectives add fine_hp.ramtb dummy 
scoreboard objectives add fine_hp.regfreq dummy 
scoreboard objectives remove fine_hp.hpct
scoreboard objectives add fine_hp.hpct dummy 
scoreboard objectives remove fine_hp.hp_frac
scoreboard objectives add fine_hp.hp_frac dummy 
scoreboard objectives remove fine_hp.dispT
scoreboard objectives add fine_hp.dispT dummy 
scoreboard objectives remove linkID
scoreboard objectives add linkID dummy
scoreboard players set [GLOBALS] linkID 0 
scoreboard objectives remove fine_hp.tmp0
scoreboard objectives add fine_hp.tmp0 dummy 
scoreboard objectives remove fine_hp.tmp1
scoreboard objectives add fine_hp.tmp1 dummy 
scoreboard objectives remove fine_hp.tmp2
scoreboard objectives add fine_hp.tmp2 dummy 
scoreboard objectives remove fine_hp.tmp3
scoreboard objectives add fine_hp.tmp3 dummy 
scoreboard objectives remove fine_hp.tmp4
scoreboard objectives add fine_hp.tmp4 dummy 
scoreboard objectives remove fine_hp.tmp5
scoreboard objectives add fine_hp.tmp5 dummy
summon minecraft:pig ~ ~ ~ {Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgr 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgr 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Docile Pig"', CustomNameVisible:1, HandItems:[ {}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:0.0f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
summon minecraft:blaze ~ ~ ~ {DeathLootTable:"adventure_map:entities/mountain_blaze",Tags:["unprocessed","blaze"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 10
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] blaze.m_splash 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] blaze.p_splash 4
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Mountain Blaze"', CustomNameVisible:1, HandItems:[ {id:"minecraft:blaze_rod",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:10.0f}, {Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_common
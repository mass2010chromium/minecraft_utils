summon minecraft:sheep ~ ~ ~ {DeathLootTable:"adventure_map:entities/mountain_goat",Tags:["unprocessed"]}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Mountain Goat"', CustomNameVisible:1, HandItems:[ {}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f}, {Name:"generic.followRange",Base:256.0f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
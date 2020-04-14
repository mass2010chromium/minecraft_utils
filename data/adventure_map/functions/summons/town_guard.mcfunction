summon minecraft:iron_golem ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Team:Friendlies,Tags:["unprocessed"],Invulnerable:1,PersistenceRequired:1}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 300
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 300
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 300
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 5
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'{"text":"Townsburg Guard"}', CustomNameVisible:1b, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f}, {Name:"generic.followRange",Base:256.0f}, {Name:"generic.movementSpeed",Base:.15f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
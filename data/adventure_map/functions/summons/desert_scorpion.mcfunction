summon minecraft:cave_spider ~ ~ ~ {DeathLootTable:"adventure_map:entities/region_4",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 45
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 45
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 45
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 10
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Desert Scorpion"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:8.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.knockbackResistance",Base:0.20f},{Name:"generic.movementSpeed",Base:0.50f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
summon minecraft:bat ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 5
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 8
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Khors Onah Bat"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:30.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.movementSpeed",Base:0.1f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
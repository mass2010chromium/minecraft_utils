summon minecraft:phantom ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 15
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 15
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 15
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 5
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 8
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Sewer Creature"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {id:"leather_boots",Count:1b,tag:{display:{color:6040847},Unbreakable:1b,Enchantments:[{id:depth_strider,lvl:3}]}}, {}, {}, {id:"minecraft:stone",Count:1b} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:7.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.movementSpeed",Base:0.1f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
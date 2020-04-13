summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/trail_bandit",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Trail Bandit"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone_axe",Count:1b,tag:{Unbreakable:1b}} ], ArmorItems:[ {}, {id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"thistle3",Unbreakable:1b}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:30.0f}, {Name:"generic.movementSpeed",Base:0.30f},{Name:"generic.followRange",Base:256.0f}] } 
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
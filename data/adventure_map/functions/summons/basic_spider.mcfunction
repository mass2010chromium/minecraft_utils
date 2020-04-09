summon minecraft:spider ~ ~ ~ {Tags:["unprocessed"],Team:Enemies,PersistenceRequired:1}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 50
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Forest Spider"', CustomNameVisible:1, HandItems:[ {id:"minecraft:spider_eye",Count:1b}, {} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:10}],AttributeModifiers:[]}}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:15.0f}, {Name:"generic.movementSpeed",Base:0.4f},{Name:"generic.followRange",Base:256.0f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
summon minecraft:snowball ~ ~1.25 ~ {Tags:["aggro_snowball"]}
data modify entity @e[tag=aggro_snowball,sort=nearest,limit=1] owner.L set from entity @p[gamemode=adventure] UUIDLeast
data modify entity @e[tag=aggro_snowball,sort=nearest,limit=1] owner.M set from entity @p[gamemode=adventure] UUIDMost
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
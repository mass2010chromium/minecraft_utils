summon minecraft:skeleton ~ ~ ~ {Tags:["unprocessed"],Team:Enemies,PersistenceRequired:1}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.skhack 500
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 20
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Undead Ranger"', CustomNameVisible:1, HandItems:[ {id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3}]}}, {} ], ArmorItems:[ {}, {}, {id:"minecraft:iron_chestplate",Count:1b}, {id:"minecraft:leather_helmet",Count:1b} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:500.0f, Attributes:[{Name:"generic.maxHealth",Base:500.0f},{Name:"generic.followRange",Base:256.0f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
summon minecraft:snowball ~ ~2.05 ~ {Tags:["aggro_snowball"]}
data modify entity @e[tag=aggro_snowball,sort=nearest,limit=1] owner.L set from entity @p UUIDLeast
data modify entity @e[tag=aggro_snowball,sort=nearest,limit=1] owner.M set from entity @p UUIDMost
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
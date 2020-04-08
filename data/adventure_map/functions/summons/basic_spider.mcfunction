summon minecraft:spider ~ ~ ~ {Tags:["unprocessed"],Team:Enemies,PersistenceRequired:1}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 50
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Forest Spider"', CustomNameVisible:1, HandItems:[ {id:"minecraft:spider_eye",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:25.0f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
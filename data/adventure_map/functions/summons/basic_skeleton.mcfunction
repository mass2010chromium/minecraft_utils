summon minecraft:skeleton ~ ~ ~ {Tags:["unprocessed"],Team:Enemies,PersistenceRequired:1}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 20
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Undead Ranger"', CustomNameVisible:1, HandItems:[ {id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3}]}}, {} ], ArmorItems:[ {}, {}, {id:"minecraft:iron_chestplate",Count:1b}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], }
data modify entity @e[tag=unprocessed,sort=nearest,limit=1] Attributes[{Name:"generic.MaxHealth"}].Base set value 200
data modify entity @e[tag=unprocessed,sort=nearest,limit=1] Health set value 200
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
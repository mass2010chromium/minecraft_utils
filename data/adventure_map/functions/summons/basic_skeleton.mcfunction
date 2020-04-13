summon minecraft:skeleton ~ ~ ~ {DeathLootTable:"adventure_map:entities/basic_skeleton",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.skhack 500
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 20
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Undead Ranger"', CustomNameVisible:1, HandItems:[ {id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:3}]}}, {} ], ArmorItems:[ {}, {}, {id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:500.0f, Attributes:[{Name:"generic.maxHealth",Base:500.0f},{Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_common
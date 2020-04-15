summon minecraft:sheep ~ ~ ~ {DeathLootTable:"adventure_map:entities/mountain_goat",Team:Enemies,Tags:["unprocessed"]}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'{"text":"Mountain Goat","color":"white"}', CustomNameVisible:1b, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f}, {Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
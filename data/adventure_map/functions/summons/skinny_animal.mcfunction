summon minecraft:rabbit ~ ~ ~ {DeathLootTable:"adventure_map:entities/skinny_animal",Team:Enemies,Tags:["unprocessed","passive"]}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 12
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 12
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 12
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'{"text":"Skinny Animal","color":"white"}', CustomNameVisible:1b, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {id:"minecraft:diamond_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"feather_falling",lvl:32768}]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.movementSpeed",Base:0.42f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
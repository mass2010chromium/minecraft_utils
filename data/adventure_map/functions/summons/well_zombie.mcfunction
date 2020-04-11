summon minecraft:zombie ~ ~ ~ {Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 20
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Well Zombie"', CustomNameVisible:1, HandItems:[ {id:"minecraft:kelp",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {id:"minecraft:turtle_helmet",Count:1b,tag:{Unbreakable:1b}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:20.0f}, {Name:"generic.movementSpeed",Base:0.3f},{Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_common
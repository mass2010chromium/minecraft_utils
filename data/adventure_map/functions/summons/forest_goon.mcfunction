summon minecraft:zombie ~ ~ ~ {Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Forest Goon"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:gold_nugget",Count:1b} ], ArmorItems:[ {id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}}, {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Alex36",Unbreakable:1b}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:35.0f}, {Name:"generic.movementSpeed",Base:0.32f},{Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
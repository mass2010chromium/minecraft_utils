summon minecraft:vindicator ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 24
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 24
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 24
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Sickened Bum"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stick",Count:1b},{} ], ArmorItems:[ {id:"leather_boots",Count:1b,tag:{display:{color:6040847},Unbreakable:1b,Enchantments:[{id:depth_strider,lvl:3}]}}, {}, {id:"leather_chestplate",Count:1b,tag:{display:{color:6040847},Unbreakable:1b}}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:18.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.movementSpeed",Base:0.44f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
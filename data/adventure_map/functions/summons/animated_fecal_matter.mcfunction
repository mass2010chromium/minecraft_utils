summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Tags:["unprocessed"],IsBaby:1b,Team:Enemies,Passengers:[{id:falling_block,BlockState:{Name:"minecraft:podzol"},Time:-2147483648,NoGravity:1}]}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 5
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 8
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Animated Fecal Matter"', CustomNameVisible:1, HandItems:[ {id:"minecraft:air",Count:1b}, {} ], ArmorItems:[ {id:chainmail_boots,Count:1b,tag:{Unbreakable:1b}}, {id:leather_leggings,Count:1b,tag:{Unbreakable:1b}}, {}, {id:chainmail_helmet,Count:1b,tag:{Unbreakable:1b}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:30.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.movementSpeed",Base:0.3f}], ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
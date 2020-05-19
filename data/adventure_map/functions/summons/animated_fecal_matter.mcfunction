summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Tags:["unprocessed","rangedTag"],IsBaby:1b,Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 35
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedMD 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedPD 6
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedCDBase 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedCooldown 60
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Animated Fecal Matter"', CustomNameVisible:1, HandItems:[ {id:"minecraft:soul_sand",Count:1b}, {id:"minecraft:soul_sand",Count:1b} ], ArmorItems:[ {id:"leather_boots",Count:1b,tag:{display:{color:6040847},Unbreakable:1b,AttributeModifiers:[]}}, {id:"leather_leggings",Count:1b,tag:{display:{color:6040847},Unbreakable:1b,AttributeModifiers:[]}}, {id:"leather_chestplate",Count:1b,tag:{display:{color:6040847},Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:podzol",Count:1b} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:8.0f}, {Name:"generic.followRange",Base:256.0f},{Name:"generic.movementSpeed",Base:0.1f}]  }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
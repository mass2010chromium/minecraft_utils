summon minecraft:husk ~ ~ ~ {DeathLootTable:"adventure_map:entities/region_3",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Starving Corpse"', CustomNameVisible:1, HandItems:[ {id:"minecraft:iron_hoe",Count:1b}, {id:"minecraft:bone",Count:1b} ], ArmorItems:[ {id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:skeleton_skull",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:15.0f}, {Name:"generic.movementSpeed",Base:0.33f},{Name:"generic.followRange",Base:256.0f}, {Name:"generic.knockbackResistance",Base:0.15f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
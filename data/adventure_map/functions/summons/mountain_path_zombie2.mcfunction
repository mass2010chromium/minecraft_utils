summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/basic_zombie",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 10
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Zombie"', CustomNameVisible:1, HandItems:[ {id:"minecraft:oak_sapling",Count:1b}, {} ], ArmorItems:[ {id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:3}]}}, {id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:3}]}}, {id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:3}]}}, {id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:3}]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:20.0f}, {Name:"generic.movementSpeed",Base:0.33f},{Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
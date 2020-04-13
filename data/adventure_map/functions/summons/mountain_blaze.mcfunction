summon minecraft:blaze ~ ~ ~ {DeathLootTable:"adventure_map:entities/mountain_blaze",Tags:["unprocessed","blaze"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 55
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] blaze.m_splash 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] blaze.p_splash 6
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Mountain Blaze"', CustomNameVisible:1, HandItems:[ {id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:knockback,lvl:3}]}}, {} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:minecraft:projectile_protection,lvl:3}]}}, {id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:minecraft:projectile_protection,lvl:3}]}}, {id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:minecraft:projectile_protection,lvl:3}]}}, {id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:minecraft:projectile_protection,lvl:3}]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:10.0f}, {Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_common
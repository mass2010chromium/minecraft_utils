summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/basic_zombie",Tags:["unprocessed","rangedTag"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedMD 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedPD 6
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedCDBase 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] rangedCooldown 40
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Ranged Test"', CustomNameVisible:1, HandItems:[ {id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:knockback,lvl:3}]}}, {} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:1}]}}, {id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:2}]}}, {id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:1}]}}, {id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[], Enchantments:[{id:projectile_protection,lvl:2}]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:10.0f}, {Name:"generic.movementSpeed",Base:0.1f},{Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
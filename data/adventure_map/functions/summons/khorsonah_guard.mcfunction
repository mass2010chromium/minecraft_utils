summon minecraft:husk ~ ~ ~ {DeathLootTable:"adventure_map:entities/khorsonah_guard",Tags:["unprocessed","chargeTag","TheBub"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.tmp0 80
execute as @a run scoreboard players add @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.tmp0 70
execute as @e[tag=unprocessed,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.hp = @s fine_hp.tmp0
execute as @e[tag=unprocessed,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.mh = @s fine_hp.tmp0
execute as @e[tag=unprocessed,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.tmp0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 15
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] chargeMD 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] chargePD 9
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] chargeCDBase 80
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] chargeCooldown 80
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Guard Henry \'Bub\' Thoreau"', CustomNameVisible:1, HandItems:[ {id:"minecraft:iron_axe",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:paper",Count:1b} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],Enchantments:[{id:depth_strider,lvl:3},{id:projectile_protection,lvl:4}]}}, {id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"player_head",Count:1b,tag:{SkullOwner:"hppeng",Enchantments:[{id:projectile_protection,lvl:4}]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:20.0f}, {Name:"generic.movementSpeed",Base:0.35f},{Name:"generic.followRange",Base:256.0f},{Name:"generic.knockbackResistance",Base:0.3f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
summon minecraft:zombie ~ ~ ~ {Tags:["unprocessed"],Team:Enemies,PersistenceRequired:1}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 75
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 75
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 75
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 40
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Armored Zombie"', CustomNameVisible:1, HandItems:[ {id:"minecraft:shield",Count:1b}, {} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,AttributeModifiers:[]}, {id:"minecraft:iron_leggings",Count:1b,AttributeModifiers:[]}, {id:"minecraft:iron_chestplate",Count:1b,AttributeModifiers:[]}, {id:"minecraft:iron_helmet",Count:1b,AttributeModifiers:[]} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:20.0f}, {Name:"generic.movementSpeed",Base:0.18f}] }
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
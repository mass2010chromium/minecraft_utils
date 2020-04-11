summon minecraft:spider ~ ~ ~ {Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 30
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 50
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Forest Spider"', CustomNameVisible:1, HandItems:[ {id:"minecraft:spider_eye",Count:1b}, {} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:10}],AttributeModifiers:[],Unbreakable:1b}}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:15.0f}, {Name:"generic.movementSpeed",Base:0.4f},{Name:"generic.followRange",Base:256.0f}] }
function adventure_map:summons/enemy_common
execute positioned ~ ~2.25 ~ run tp @e[tag=aggro_snowball,limit=1,sort=nearest] ~ ~-1 ~
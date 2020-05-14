summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/basic_zombie",Tags:["unprocessed",needInvisBar],Team:Enemies}
summon minecraft:armor_stand ~ ~1.9 ~ {Duration:2s,Team:Enemies,CustomNameVisible:1b,Tags:["unprocessed","hp_display"],Marker:1b,Invulnerable:1b,Invisible:1b}
scoreboard players operation @e[tag=unprocessed,sort=nearest,limit=1] linkID = [GLOBALS] linkID
execute positioned ~ ~1.9 ~ run scoreboard players operation @e[tag=unprocessed,sort=nearest,limit=1] linkID = [GLOBALS] linkID
scoreboard players add [GLOBALS] linkID 1
execute positioned ~ ~1.9 ~ run tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed 
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Invisible Zombie"', CustomNameVisible:1, HandItems:[ {id:"minecraft:rotten_flesh",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.maxHealth",Base:200.0f},{Name:"generic.attackDamage",Base:20.0f}, {Name:"generic.followRange",Base:256.0f}], ActiveEffects:[{Id:14,Duration:1000000,Amplifier:0,ShowParticles:0b}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common
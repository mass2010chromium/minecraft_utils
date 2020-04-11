summon minecraft:snowball ~ ~2.5 ~ {Tags:["aggro_snowball"]}
data modify entity @e[tag=aggro_snowball,sort=nearest,limit=1] owner.L set from entity @p[gamemode=adventure] UUIDLeast
data modify entity @e[tag=aggro_snowball,sort=nearest,limit=1] owner.M set from entity @p[gamemode=adventure] UUIDMost 
scoreboard players operation @e[tag=unprocessed,sort=nearest,limit=1] current_region = [GLOBALS] current_region
execute store result entity @e[tag=unprocessed,sort=nearest,limit=1] PersistenceRequired byte 1 run scoreboard players get [GLOBALS] persistence 
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
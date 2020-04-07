scoreboard players add @s fine_hp.regt 1
scoreboard players operation @s fine_hp.hp < @s fine_hp.mh
execute as @s store result score @s fine_hp.tmp0 run data get entity @s Health
scoreboard players remove @s fine_hp.tmp0 200
scoreboard players operation @s fine_hp.hp += @s fine_hp.tmp0
data modify entity @s Health set value 200
scoreboard players operation @s fine_hp.tmp1 = @s fine_hp.prev_hp
scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.hp
scoreboard players operation @s fine_hp.tmp2 = @s fine_hp.hp
scoreboard players operation @s fine_hp.tmp2 -= @s fine_hp.prev_hp
scoreboard players add @s fine_hp.dispT 1
scoreboard players remove @s fine_hp.dispT 1
execute as @s[scores={fine_hp.tmp1=1..,fine_hp.dispT=0}] run data modify entity @s HandItems[0].tag.display.Name set from entity @s CustomName
scoreboard players set @s[scores={fine_hp.tmp1=1..}] fine_hp.dispT 200
execute as @s[scores={fine_hp.tmp2=1..,fine_hp.dispT=0}] run data modify entity @s HandItems[0].tag.display.Name set from entity @s CustomName
scoreboard players set @s[scores={fine_hp.tmp2=1..}] fine_hp.dispT 200
tag @s[scores={fine_hp.hp_frac=..0}] add fine_hp.isdead
execute as @s[scores={fine_hp.dispT=1..}] run function adventure_map:fine_damage/mob_healthbar_helper
execute as @s[scores={fine_hp.dispT=1}] run data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
scoreboard players remove @s[scores={fine_hp.dispT=1..}] fine_hp.dispT 1
scoreboard players add @s fine_hp.regt 1
effect clear @s minecraft:resistance 
execute at @s if entity @p[distance=0..5] run tag @s add short_sighted
execute at @s[tag=short_sighted] if entity @p[distance=0..5] run tag @s add nearby_tmp
data modify entity @s[tag=short_sighted,tag=!nearby_tmp] Attributes[{Name:"generic.followRange"}].Base set value 200
tag @s[tag=short_sighted,tag=!nearby_tmp] remove short_sighted
data modify entity @s[tag=short_sighted] Attributes[{Name:"generic.followRange"}].Base set value 6
tag @s remove nearby_tmp 
scoreboard players operation @s fine_hp.hp < @s fine_hp.mh 
execute as @s store result score @s fine_hp.tmp0 run data get entity @s Health
scoreboard players remove @s fine_hp.tmp0 200
scoreboard players operation @s fine_hp.dmg -= @s fine_hp.tmp0 
scoreboard players operation @s fine_hp.tmp1 = @s fine_hp.prev_hp
scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.hp
scoreboard players operation @s fine_hp.tmp2 = @s fine_hp.hp
scoreboard players operation @s fine_hp.tmp2 -= @s fine_hp.prev_hp 
scoreboard players add @s fine_hp.dispT 1
scoreboard players remove @s fine_hp.dispT 1 
execute as @s[scores={fine_hp.tmp1=1..,fine_hp.dispT=0}] run data modify entity @s HandItems[0].tag.display.Name set from entity @s CustomName 
effect give @s[scores={fine_hp.tmp1=1..}] minecraft:instant_damage 1 0
effect give @s[scores={fine_hp.tmp1=1..}] minecraft:instant_health 1 0
effect give @s[scores={fine_hp.tmp1=1..}] minecraft:resistance 1 4 true 
scoreboard players set @s[scores={fine_hp.tmp1=1..}] fine_hp.dispT 200
execute as @s[scores={fine_hp.tmp2=1..,fine_hp.dispT=0}] run data modify entity @s HandItems[0].tag.display.Name set from entity @s CustomName
scoreboard players set @s[scores={fine_hp.tmp2=1..}] fine_hp.dispT 200 
tag @s[scores={fine_hp.hp_frac=..0}] add fine_hp.isdead
execute as @s[scores={fine_hp.dispT=1..}] run function adventure_map:fine_damage/mob_healthbar_helper 
execute as @s[scores={fine_hp.dispT=1}] run data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
scoreboard players remove @s[scores={fine_hp.dispT=1..}] fine_hp.dispT 1 
data modify entity @s Health set value 200
data modify entity @s Invulnerable set value 0b
data modify entity @s[scores={fine_hp.invul=1..}] Invulnerable set value 1b 
execute as @s[tag=needInvisBar] run scoreboard players operation [GLOBALS] fine_hp.tmp0 = @s linkID
execute at @s[tag=needInvisBar] positioned ~ ~1.9 ~ as @e[type=armor_stand] if score @s linkID = [GLOBALS] fine_hp.tmp0 run tag @s add invis_link_tag
data modify entity @e[tag=invis_link_tag,limit=1] CustomName set from entity @s CustomName
execute at @s run tp @e[tag=invis_link_tag] ~ ~1.9 ~
tag @e[tag=invis_link_tag] remove fine_hp.isdead
tag @e[tag=invis_link_tag] remove invis_link_tag
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Trigger fireball summon, and remove mana from player 
execute at @p[tag=mage,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=200..}] store success score @p[tag=mage,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=200..}] fine_hp.tmp0 run tag @s add fireball_summon 
tag @p[tag=mage,scores={fine_hp.tmp0=1}] add fireball_summoner
scoreboard players remove @p[tag=fireball_summoner] mana.mana 200
execute as @p[tag=fireball_summoner] at @s run summon minecraft:fireball ^ ^ ^0.1 {direction:[0.0,0.0,0.0],ExplosionPower:0,Tags:["unprocessed","mage_fireball"]}
execute at @p[tag=fireball_summoner] run playsound minecraft:entity.blaze.shoot master @a 
# Record source x,y,z, and assign damage
execute as @p[tag=fireball_summoner] at @s store result score @e[tag=mage_fireball,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp1 run data get entity @s Pos[0] 1000
execute as @p[tag=fireball_summoner] at @s store result score @e[tag=mage_fireball,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp2 run data get entity @s Pos[1] 1000
execute as @p[tag=fireball_summoner] at @s store result score @e[tag=mage_fireball,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp3 run data get entity @s Pos[2] 1000
execute as @p[tag=fireball_summoner] at @s run scoreboard players operation @e[tag=mage_fireball,sort=nearest,limit=1,tag=unprocessed] spell.1.power = @s spell.1.power 
# Start doing vector math
# t0, t1, t2 are dx, dy, dz
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] store result score @s fine_hp.tmp0 run data get entity @s Pos[0] 1000
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.tmp1
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] store result score @s fine_hp.tmp1 run data get entity @s Pos[1] 1000
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.tmp2
scoreboard players add @e[tag=unprocessed,tag=mage_fireball,limit=1] fine_hp.tmp1 10
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] store result score @s fine_hp.tmp2 run data get entity @s Pos[2] 1000
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.tmp2 -= @s fine_hp.tmp3
# Finally store back into entity data. 
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] run data modify entity @s power[1] set value -0.17
scoreboard players set @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] fine_hp.tmp3 10 
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=unprocessed,tag=mage_fireball,sort=nearest,limit=1] store result entity @s direction[1] double 0.02 run scoreboard players get @s fine_hp.tmp1
execute as @s[tag=fireball_summon] at @s run tag @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] add processed
execute as @s[tag=fireball_summon] at @s run tag @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] remove unprocessed
tag @p[tag=fireball_summoner] remove fireball_summoner
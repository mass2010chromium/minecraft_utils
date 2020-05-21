scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Trigger fireball summon, and remove mana from player 
scoreboard players add [GLOBALS] spell.2.power 1 
execute at @p[tag=mage,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] store success score @p[tag=mage,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] fine_hp.tmp0 run tag @s add windspear_summon 
tag @p[tag=mage,scores={fine_hp.tmp0=1}] add windspear_summoner
scoreboard players remove @p[tag=windspear_summoner] mana.mana 500
execute as @p[tag=windspear_summoner] at @s run summon minecraft:armor_stand ^ ^ ^0.1 {Tags:["unprocessed","mage_wind_spear"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @p[tag=windspear_summoner] run playsound minecraft:entity.skeleton.shoot master @a 
# Record source x,y,z, and assign damage
execute as @p[tag=windspear_summoner] at @s store result score @e[tag=mage_wind_spear,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp1 run data get entity @s Pos[0] 1000
execute as @p[tag=windspear_summoner] at @s store result score @e[tag=mage_wind_spear,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp2 run data get entity @s Pos[1] 1000
execute as @p[tag=windspear_summoner] at @s store result score @e[tag=mage_wind_spear,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp3 run data get entity @s Pos[2] 1000
execute as @p[tag=windspear_summoner] at @s run scoreboard players operation @e[tag=mage_wind_spear,sort=nearest,limit=1,tag=unprocessed] spell.2.power = @s spell.2.power 
# Start doing vector math
# t0, t1, t2 are dx, dy, dz
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] store result score @s fine_hp.tmp0 run data get entity @s Pos[0] 1000
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.tmp1
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] store result score @s fine_hp.tmp1 run data get entity @s Pos[1] 1000
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.tmp2
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] store result score @s fine_hp.tmp2 run data get entity @s Pos[2] 1000
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] run scoreboard players operation @s fine_hp.tmp2 -= @s fine_hp.tmp3 
# Set life ticks.
scoreboard players set @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] fine_hp.tmp3 10 
execute as @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
scoreboard players operation @e[tag=unprocessed,tag=mage_wind_spear,sort=nearest,limit=1] fine_hp.tmp4 = [GLOBALS] spell.2.power
execute as @s[tag=windspear_summon] at @s run tag @e[tag=mage_wind_spear,sort=nearest,limit=1,tag=unprocessed] add processed
execute as @s[tag=windspear_summon] at @s run tag @e[tag=mage_wind_spear,sort=nearest,limit=1,tag=unprocessed] remove unprocessed
tag @p[tag=windspear_summoner] remove windspear_summoner
summon minecraft:armor_stand ^ ^ ^1 { Tags:[ "rangedMissile","unprocessed","MissileSimple" ],OnGround:0b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583} 
data modify entity @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] Rotation set from entity @s Rotation
data modify entity @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] ArmorItems[3] set from entity @s HandItems[0] 
# Record source x,y,z, and assign damage
execute store result score @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp1 run data get entity @s Pos[0] 1000
execute store result score @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp2 run data get entity @s Pos[1] 1000
execute store result score @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp3 run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] rangedPD = @s rangedPD
scoreboard players operation @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] rangedMD = @s rangedMD  
# Start doing vector math
# t0, t1, t2 are dx, dy, dz
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] store result score @s fine_hp.tmp0 run data get entity @s Pos[0] 1000
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] run scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.tmp1
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] store result score @s fine_hp.tmp1 run data get entity @s Pos[1] 1000
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] run scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.tmp2
# Extra y velocity
scoreboard players add @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp1 100
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] store result score @s fine_hp.tmp2 run data get entity @s Pos[2] 1000
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] run scoreboard players operation @s fine_hp.tmp2 -= @s fine_hp.tmp3
# Finally store back into entity data. 
scoreboard players set @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] rangedCooldown 25 
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] store result entity @s Motion[1] double 0.001 run scoreboard players get @s fine_hp.tmp1
tag @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] add processed
tag @e[tag=rangedMissile,sort=nearest,limit=1,tag=unprocessed] remove unprocessed
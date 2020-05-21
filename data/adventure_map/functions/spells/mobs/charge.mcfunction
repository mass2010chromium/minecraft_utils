summon minecraft:armor_stand ^ ^ ^0.6 { Tags:[ "chargeTMP" ],OnGround:0b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583} 
#function adventure_map:rng/rng
#scoreboard players set @s fine_hp.tmp0 4
#scoreboard players operation @s random %= @s fine_hp.tmp0
#execute as @s[scores={random=0..0}] run tag @e[tag=chargeTMP,sort=nearest,limit=1] add randomize 
# Increase y velocity factor
execute store result score @s fine_hp.tmp0 run data get entity @p Pos[0] 1000
execute store result score @s fine_hp.tmp1 run data get entity @p Pos[2] 1000
execute store result score @s fine_hp.tmp2 run data get entity @s Pos[0] 1000
execute store result score @s fine_hp.tmp3 run data get entity @s Pos[2] 1000
scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.tmp2
scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.tmp3 
scoreboard players operation @s fine_hp.tmp0 *= @s fine_hp.tmp0
scoreboard players operation @s fine_hp.tmp1 *= @s fine_hp.tmp1
scoreboard players operation @s fine_hp.tmp0 += @s fine_hp.tmp1
scoreboard players set @s fine_hp.tmp1 800000
scoreboard players operation @s fine_hp.tmp0 /= @s fine_hp.tmp1 
# Record source x,y,z, and assign damage
execute store result score @s fine_hp.tmp1 run data get entity @s Pos[0] 1000
execute store result score @s fine_hp.tmp2 run data get entity @s Pos[1] 1000
execute store result score @s fine_hp.tmp3 run data get entity @s Pos[2] 1000  
# Start doing vector math
# t0, t1, t2 are dx, dy, dz
execute store result score @s chargeVY run data get entity @e[tag=chargeTMP,sort=nearest,limit=1] Pos[0] 1000
scoreboard players operation @s chargeVY -= @s fine_hp.tmp1
# # +/- 1 block mini spread
#function adventure_map:rng/rng
#scoreboard players set @s fine_hp.tmp4 800
#scoreboard players operation @s random %= @s fine_hp.tmp4
#scoreboard players remove @s random 400
#scoreboard players operation @s chargeVY += @s random 
execute store result score @s fine_hp.tmp5 run data get entity @e[tag=chargeTMP,sort=nearest,limit=1] Pos[1] 1000
scoreboard players operation @s fine_hp.tmp5 -= @s fine_hp.tmp2
# Extra y velocity
scoreboard players operation @s fine_hp.tmp5 += @s fine_hp.tmp0
scoreboard players add @s fine_hp.tmp5 500
# execute if entity @p[distance=0..4] run scoreboard players remove @s fine_hp.tmp5 500 
execute store result score @s chargeVX run data get entity @e[tag=chargeTMP,sort=nearest,limit=1] Pos[2] 1000
scoreboard players operation @s chargeVX -= @s fine_hp.tmp3 
# # +/- 1 block mini spread
#function adventure_map:rng/rng
#scoreboard players operation @s random %= @s fine_hp.tmp4
#scoreboard players remove @s random 400
#scoreboard players operation @s chargeVX += @s random 
# Finally store back into entity data.
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s fine_hp.tmp5 
tag @s add charging
data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 5 
kill @e[tag=chargeTMP]
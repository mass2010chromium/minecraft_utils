# Spam set velocity because
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s fine_hp.tmp0
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s fine_hp.tmp2 
execute at @p[distance=0..1.5] run tag @s add rangedHit 
scoreboard players remove @s rangedCooldown 1
tag @s[scores={rangedCooldown=..0}] add rangedHit 
tag @s[nbt={OnGround:0b},tag=!leftGround] add leftGround
tag @s[nbt={OnGround:1b},tag=leftGround] add rangedHit
tag @s[tag=rangedHit] add fine_hp.isdead 
execute as @s[tag=rangedHit] run function adventure_map:spells/mobs/simple_ranged_hit
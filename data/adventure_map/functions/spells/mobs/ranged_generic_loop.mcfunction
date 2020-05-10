# Spam set velocity because
execute as @e[tag=rangedMissile] store result entity @s Motion[0] double 0.001 run scoreboard players get @s fine_hp.tmp0
execute as @e[tag=rangedMissile] store result entity @s Motion[2] double 0.001 run scoreboard players get @s fine_hp.tmp2 
execute as @e[tag=rangedMissile] at @s run execute at @p[distance=0..1.5] run tag @s add rangedHit 
scoreboard players remove @e[tag=rangedMissile] rangedCDBase 1
tag @e[tag=rangedMissile,scores={rangedCDBase=0}] add rangedHit 
tag @e[tag=rangedMissile,nbt={OnGround:0b},tag=!leftGround] add leftGround
tag @e[tag=rangedMissile,nbt={OnGround:1b},tag=leftGround] add rangedHit
tag @e[tag=rangedMissile,tag=rangedHit] add fine_hp.isdead 
execute as @e[tag=MissileSimple,tag=rangedHit] at @s run function adventure_map:spells/mobs/simple_ranged_hit
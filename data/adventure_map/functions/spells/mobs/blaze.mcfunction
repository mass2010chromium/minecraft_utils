scoreboard players set @e[tag=blaze] fine_hp.tmp0 0
execute as @e[tag=blaze] at @s run tag @e[type=small_fireball,limit=1,sort=nearest,distance=0..2,tag=!processed] add unprocessed
execute as @e[tag=blaze] at @s store success score @s fine_hp.tmp0 run tag @e[type=small_fireball,limit=1,sort=nearest,distance=0..2,tag=!processed] add blaze_fireball 
execute as @e[tag=blaze,scores={fine_hp.tmp0=1}] at @s run function adventure_map:spells/mobs/blaze_fireball 
execute at @e[tag=blaze_fireball] run kill @e[tag=blaze_fireball_tracker,limit=1,sort=nearest]
execute as @e[tag=blaze_fireball_tracker] at @s run scoreboard players operation @a[distance=0..2] fine_hp.mdmg += @s blaze.m_splash
execute as @e[tag=blaze_fireball_tracker] at @s run scoreboard players operation @a[distance=0..4] fine_hp.mdmg += @s blaze.m_splash
execute as @e[tag=blaze_fireball_tracker] at @s run scoreboard players operation @a[distance=0..2] fine_hp.dmg += @s blaze.p_splash
execute as @e[tag=blaze_fireball_tracker] at @s run scoreboard players operation @a[distance=0..4] fine_hp.dmg += @s blaze.p_splash
execute at @e[tag=blaze_fireball_tracker] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=blaze_fireball_tracker] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.7 
execute at @e[tag=blaze_fireball] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["blaze_fireball_tracker"]}
execute as @e[tag=blaze_fireball] at @s run scoreboard players operation @e[distance=0..2,sort=nearest,tag=blaze_fireball_tracker] blaze.m_splash = @s blaze.m_splash
execute as @e[tag=blaze_fireball] at @s run scoreboard players operation @e[distance=0..2,sort=nearest,tag=blaze_fireball_tracker] blaze.p_splash = @s blaze.p_splash 
scoreboard players remove @e[tag=blaze_fireball] fine_hp.tmp0 1
kill @e[tag=blaze_fireball,scores={fine_hp.tmp0=0}]
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 10 0.7
summon lightning_bolt ~ 255 ~ 
summon armor_stand ~ ~ ~ {Tags:["lightning_tracker"],Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] run scoreboard players set @s fine_hp.tmp3 5
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] run scoreboard players set @s fine_hp.tmp2 17
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] run scoreboard players set @s fine_hp.tmp5 20
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] run function adventure_map:rng/rng
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] run scoreboard players operation @s fine_hp.tmp4 = @s random
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] run scoreboard players operation @s fine_hp.tmp4 %= @s fine_hp.tmp3
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] at @s run function adventure_map:spells/lightning_recurse
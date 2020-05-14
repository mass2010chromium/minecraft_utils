kill @e[tag=fine_hp.isdead] 
tag @e[type=armor_stand,tag=hp_display] add fine_hp.isdead 
scoreboard players set @a[tag=fine_hp.tracker] fine_hp.tmp0 1
execute as @a[tag=fine_hp.tracker] run scoreboard players operation @s fine_hp.tmp0 = @s fine_hp.mh_base
tellraw @a[tag=fine_hp.tracker,scores={fine_hp.tmp0=0}] "Invalid fine_hp registration, kicking"
tag @a[tag=fine_hp.tracker,scores={fine_hp.tmp0=0}] remove fine_hp.tracker 
execute as @e[tag=fine_hp.tracker] run function adventure_map:fine_damage/common_healthbar
execute as @a[tag=fine_hp.tracker] run function adventure_map:fine_damage/player_healthbar
execute as @e[type=!minecraft:player, tag=fine_hp.tracker] run function adventure_map:fine_damage/mob_healthbar
#execute as @e[type=!minecraft:player, type=!minecraft:skeleton, tag=fine_hp.tracker] run function adventure_map:fine_damage/mob_healthbar
#execute as @e[type=minecraft:skeleton, tag=fine_hp.tracker] run function adventure_map:fine_damage/skeleton_healthbar 
execute as @e[tag=fine_hp.tracker] run scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.hp
execute as @e[tag=fine_hp.tracker] run function adventure_map:fine_damage/common_resist
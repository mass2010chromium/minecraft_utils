kill @e[tag=fine_hp.isdead] 
execute as @e[tag=fine_hp.tracker] run function adventure_map:fine_damage/common_healthbar
execute as @a[tag=fine_hp.tracker] run function adventure_map:fine_damage/player_healthbar
execute as @e[type=!minecraft:player, tag=fine_hp.tracker] run function adventure_map:fine_damage/mob_healthbar 
execute as @e[tag=fine_hp.tracker] run scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.hp
execute as @e[tag=fine_hp.tracker] run function adventure_map:fine_damage/common_resist
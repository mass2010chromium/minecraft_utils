kill @e[tag=fine_hp.isdead]
execute as @e[tag=fine_hp.tracker] run function fine_damage:common_healthbar
execute as @a[tag=fine_hp.tracker] run function fine_damage:player_healthbar
execute as @e[type=!minecraft:player, tag=fine_hp.tracker] run function fine_damage:mob_healthbar
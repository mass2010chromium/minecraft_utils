kill @e[tag=##mob_death##]

execute as @e[tag=##tracker##] run function adventure_map:fine_damage/common_healthbar
execute as @a[tag=##tracker##] run function adventure_map:fine_damage/player_healthbar
execute as @e[type=!minecraft:player, tag=##tracker##] run function adventure_map:fine_damage/mob_healthbar
execute as @e[tag=##tracker##] run scoreboard players operation @s ##last_health## = @s ##health##
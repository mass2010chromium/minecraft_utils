scoreboard players add @s ##regen_tick## 1

scoreboard players operation @s ##health## < @s ##max_health##

execute as @s store result score @s ##t0## run data get entity @s Health
scoreboard players remove @s ##t0## ##mob_base_hp##
scoreboard players operation @s ##health## += @s ##t0##
data modify entity @s Health set value ##mob_base_hp##

scoreboard players operation @s ##t1## = @s ##last_health##
scoreboard players operation @s ##t1## -= @s ##health##
scoreboard players operation @s ##t2## = @s ##health##
scoreboard players operation @s ##t2## -= @s ##last_health##

scoreboard players add @s ##name_reset_ticks## 1
scoreboard players remove @s ##name_reset_ticks## 1

execute as @s[scores={##t1##=1..,##name_reset_ticks##=0}] run data modify entity @s HandItems[0].tag.display.Name set from entity @s CustomName
scoreboard players set @s[scores={##t1##=1..}] ##name_reset_ticks## ##name_reset_numticks##
execute as @s[scores={##t2##=1..,##name_reset_ticks##=0}] run data modify entity @s HandItems[0].tag.display.Name set from entity @s CustomName
scoreboard players set @s[scores={##t2##=1..}] ##name_reset_ticks## ##name_reset_numticks##

tag @s[scores={##health_fraction##=..0}] add ##mob_death##
execute as @s[scores={##name_reset_ticks##=1..}] run function fine_damage:mob_healthbar_helper

execute as @s[scores={##name_reset_ticks##=1}] run data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
scoreboard players remove @s[scores={##name_reset_ticks##=1..}] ##name_reset_ticks## 1
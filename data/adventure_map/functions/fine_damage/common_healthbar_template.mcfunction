scoreboard players operation @s ##health_fraction## = @s ##health##
scoreboard players operation @s ##last_health## = @s ##health##
scoreboard players set @s ##t1## 20
scoreboard players operation @s ##health_fraction## *= @s ##t1##
scoreboard players operation @s ##health_fraction## /= @s ##max_health##
scoreboard players add @s[scores={##health##=1..}] ##health_fraction## 1
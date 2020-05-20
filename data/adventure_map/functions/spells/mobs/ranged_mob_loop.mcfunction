execute if entity @p[distance=0..20] run scoreboard players remove @s rangedCooldown 1 
tp @s[scores={rangedCooldown=0..1}] ~ ~ ~ facing entity @p 
execute as @s[scores={rangedCooldown=0},tag=simpleRanged] at @s run function adventure_map:spells/mobs/simple_ranged_shoot 
scoreboard players operation @s[scores={rangedCooldown=0}] rangedCooldown = @s rangedCDBase
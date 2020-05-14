scoreboard players remove @s rangedCooldown 1 
execute as @e[tag=rangedTag,scores={rangedCooldown=0..1}] at @s run tp @s ~ ~ ~ facing entity @p 
execute as @s[scores={rangedCooldown=0}] at @s run function adventure_map:spells/mobs/simple_ranged_shoot 
scoreboard players operation @s[scores={rangedCooldown=0}] rangedCooldown = @s rangedCDBase
scoreboard players remove @s rangedCDBase 1 
execute as @e[tag=rangedTag,scores={rangedCDBase=0..4}] at @s run tp @s ~ ~ ~ facing entity @p 
execute as @s[scores={rangedCDBase=0}] at @s run function adventure_map:spells/mobs/simple_ranged_shoot 
scoreboard players operation @s[scores={rangedCDBase=0}] rangedCDBase = @s rangedCooldown
execute as @a run scoreboard players operation @s mana.mana += @s mana.mana_regen
execute as @a run scoreboard players operation @s mana.mana_regen = @s mana.mana_regb 
scoreboard players set @a fine_hp.tmp0 1000
execute as @a run scoreboard players operation @s mana.mana < @s fine_hp.tmp0 
execute as @a store result score @s fine_hp.tmp0 run xp query @s points
execute as @a run scoreboard players operation @s fine_hp.tmp0 -= @s mana.mana
execute as @a[scores={fine_hp.tmp0=..-1}] run xp add @s 1 points
execute as @a[scores={fine_hp.tmp0=1..}] run xp add @s -1 points 
execute as @a[scores={fine_hp.tmp0=..-3}] run xp add @s 2 points
execute as @a[scores={fine_hp.tmp0=3..}] run xp add @s -2 points 
execute as @a[scores={fine_hp.tmp0=..-7}] run xp add @s 4 points
execute as @a[scores={fine_hp.tmp0=7..}] run xp add @s -4 points 
execute as @a[scores={fine_hp.tmp0=..-15}] run xp add @s 8 points
execute as @a[scores={fine_hp.tmp0=15..}] run xp add @s -8 points 
execute as @a[scores={fine_hp.tmp0=..-31}] run xp add @s 16 points
execute as @a[scores={fine_hp.tmp0=31..}] run xp add @s -16 points 
execute as @a[scores={fine_hp.tmp0=..-63}] run xp add @s 32 points
execute as @a[scores={fine_hp.tmp0=63..}] run xp add @s -32 points 
execute as @a[scores={fine_hp.tmp0=..-127}] run xp add @s 64 points
execute as @a[scores={fine_hp.tmp0=127..}] run xp add @s -64 points 
execute as @a[scores={fine_hp.tmp0=..-255}] run xp add @s 128 points
execute as @a[scores={fine_hp.tmp0=255..}] run xp add @s -128 points
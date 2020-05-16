particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 1 10 force
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
scoreboard players add @s fine_hp.tmp0 1
scoreboard players operation @s fine_hp.tmp1 = @s fine_hp.tmp0
scoreboard players operation @s fine_hp.tmp1 %= @s fine_hp.tmp5
scoreboard players add @s[scores={fine_hp.tmp1=0}] random 2
scoreboard players operation @s[scores={fine_hp.tmp1=0}] random %= @s fine_hp.tmp3
tp @s[scores={random=0}] ~ ~1 ~
tp @s[scores={random=1}] ~0.3 ~1 ~
tp @s[scores={random=2}] ~ ~1 ~-0.3
tp @s[scores={random=3}] ~-0.3 ~1 ~
tp @s[scores={random=4}] ~ ~1 ~0.3
kill @s[scores={fine_hp.tmp0=100}]
execute as @s[scores={fine_hp.tmp0=0..100}] at @s run function adventure_map:spells/lightning_recurse
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 1 10 force
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
scoreboard players add @s fine_hp.tmp0 1
scoreboard players operation @s fine_hp.tmp1 = @s fine_hp.tmp0
scoreboard players operation @s fine_hp.tmp1 %= @s fine_hp.tmp5
scoreboard players operation @s[scores={fine_hp.tmp1=0}] random *= @s fine_hp.tmp2
scoreboard players operation @s[scores={fine_hp.tmp1=0}] fine_hp.tmp4 = @s random
scoreboard players operation @s[scores={fine_hp.tmp1=0}] fine_hp.tmp4 %= @s fine_hp.tmp3
tp @s[scores={fine_hp.tmp4=0}] ~ ~1 ~
tp @s[scores={fine_hp.tmp4=1}] ~0.3 ~1 ~
tp @s[scores={fine_hp.tmp4=2}] ~ ~1 ~-0.3
tp @s[scores={fine_hp.tmp4=3}] ~-0.3 ~1 ~
tp @s[scores={fine_hp.tmp4=4}] ~ ~1 ~0.3
kill @s[scores={fine_hp.tmp0=100}]
execute as @s[scores={fine_hp.tmp0=0..100}] at @s run function adventure_map:spells/lightning_recurse
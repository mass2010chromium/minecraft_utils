particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 1 50 force
particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
tp @s ~ ~1 ~
kill @s[y=160,dy=20]
execute as @s[y=0,dy=160] at @s run function adventure_map:spells/lightning_recurse
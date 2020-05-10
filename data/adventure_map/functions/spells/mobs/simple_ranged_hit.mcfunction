 scoreboard players operation @a[distance=0..1.5] fine_hp.dmg += @s rangedPD
scoreboard players operation @a[distance=0..1.5] fine_hp.mdmg += @s rangedMD
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.4 1
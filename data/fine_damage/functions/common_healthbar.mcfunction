scoreboard players operation @s fine_hp.hp_frac = @s fine_hp.hp
scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.hp
scoreboard players set @s fine_hp.tmp1 20
scoreboard players operation @s fine_hp.hp_frac *= @s fine_hp.tmp1
scoreboard players operation @s fine_hp.hp_frac /= @s fine_hp.mh
scoreboard players add @s[scores={fine_hp.hp=1..}] fine_hp.hp_frac 1
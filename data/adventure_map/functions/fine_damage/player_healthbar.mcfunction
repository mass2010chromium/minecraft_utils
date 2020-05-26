 # Potion regen
scoreboard players add @s[scores={fine_hp.potreg=1..}] fine_hp.hp 1
scoreboard players remove @s[scores={fine_hp.potreg=1..}] fine_hp.potreg 1 
# ------------------------------------------
# Max health boost from armor
scoreboard players operation @s fine_hp.mh = @s fine_hp.mh_base
scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{display:{Lore:['{"text":"Max Health Boost: +20"}']}}}]}] fine_hp.mh 20
scoreboard players add @s[nbt={Inventory:[{Slot:101b,tag:{display:{Lore:['{"text":"Max Health Boost: +20"}']}}}]}] fine_hp.mh 20
scoreboard players add @s[nbt={Inventory:[{Slot:102b,tag:{display:{Lore:['{"text":"Max Health Boost: +20"}']}}}]}] fine_hp.mh 20
scoreboard players add @s[nbt={Inventory:[{Slot:103b,tag:{display:{Lore:['{"text":"Max Health Boost: +20"}']}}}]}] fine_hp.mh 20
scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{display:{Lore:['{"text":"Max Health Boost: +5"}']}}}]}] fine_hp.mh 5
scoreboard players add @s[nbt={Inventory:[{Slot:101b,tag:{display:{Lore:['{"text":"Max Health Boost: +5"}']}}}]}] fine_hp.mh 5
scoreboard players add @s[nbt={Inventory:[{Slot:102b,tag:{display:{Lore:['{"text":"Max Health Boost: +5"}']}}}]}] fine_hp.mh 5
scoreboard players add @s[nbt={Inventory:[{Slot:103b,tag:{display:{Lore:['{"text":"Max Health Boost: +5"}']}}}]}] fine_hp.mh 5
# ------------------------------------------  
# ------------------------------------------
# Handle player regen
# If hunger is above 18, increment
scoreboard players add @s[scores={stat.hunger=18..}] fine_hp.regt 1
# else set zero
scoreboard players set @s[scores={stat.hunger=..17}] fine_hp.regt 0
# Check if regen_tick == regen_frequency
scoreboard players operation @s fine_hp.tmp0 = @s fine_hp.regt
scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.regfreq
# If they are equal, regenerate
execute as @s[scores={fine_hp.tmp0=0..}] run scoreboard players operation @s fine_hp.hp += @s fine_hp.ramt
# Cap hp
scoreboard players operation @s fine_hp.hp < @s fine_hp.mh
# reset regen_tick as needed
scoreboard players set @s[scores={fine_hp.tmp0=0..}] fine_hp.regt 0
# set regen amount to base regen amount
scoreboard players operation @s fine_hp.ramt = @s fine_hp.ramtb
# ------------------------------------------  
# Sketchy hack for command damage resetting
scoreboard players set @s[tag=noWorldDamage] damage_blocked 0
tag @s remove noWorldDamage 
# ------------------------------------------
# Handle ingame damage sources
scoreboard players set @s fine_hp.tmp0 10
scoreboard players operation @s damage_blocked /= @s fine_hp.tmp0
scoreboard players operation @s fine_hp.dmg += @s damage_blocked
scoreboard players set @s damage_blocked 0
# If the player is dead, set their hp to equal max hp and do some sketchy death reset stuff
execute as @s[scores={fine_hp.die=1..}] run scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s[scores={fine_hp.die=1..}] fine_hp.die 0
# ------------------------------------------ 
kill @a[scores={fine_hp.hp_frac=..0}] 
function adventure_map:fine_damage/player_healthbar_helper
effect give @s minecraft:resistance 1 4 true
effect give @s minecraft:wither 1 0 true
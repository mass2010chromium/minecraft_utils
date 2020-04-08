# ------------------------------------------
# Apply invulnerability
scoreboard players remove @s[scores={fine_hp.invul=1..}] fine_hp.invul 1
scoreboard players set @s[scores={fine_hp.invul=1..}] fine_hp.mdmgr 100
scoreboard players set @s[scores={fine_hp.invul=1..}] fine_hp.dmgr 100 
# ------------------------------------------ 
# ------------------------------------------
# Handle direct damage sources (magic) 
# Apply magic resist (damage = (damage * (100 - magic_resist)) / 100)
scoreboard players set @s fine_hp.tmp0 100
scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.mdmgr
scoreboard players operation @s fine_hp.tmp0 *= @s fine_hp.mdmg
scoreboard players set @s fine_hp.tmp1 100
scoreboard players operation @s fine_hp.tmp0 /= @s fine_hp.tmp1 
# Deal damage
scoreboard players operation @s fine_hp.hp -= @s fine_hp.tmp0 
# Reset magic damage taken, magic resist
scoreboard players set @s fine_hp.mdmg 0
scoreboard players operation @s fine_hp.mdmgr = @s fine_hp.mdmgrb
# ------------------------------------------  
# ------------------------------------------
# Handle direct damage sources (physical) 
# Apply physical resist (damage = (damage * (100 - physical_resist)) / 100)
scoreboard players set @s fine_hp.tmp0 100
scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.dmgr
scoreboard players operation @s fine_hp.tmp0 *= @s fine_hp.dmg
scoreboard players set @s fine_hp.tmp1 100
scoreboard players operation @s fine_hp.tmp0 /= @s fine_hp.tmp1 
# Deal damage
scoreboard players operation @s fine_hp.hp -= @s fine_hp.tmp0 
# Reset physical damage taken, physical resist
scoreboard players set @s fine_hp.dmg 0
scoreboard players operation @s fine_hp.dmgr = @s fine_hp.dmgrb
# ------------------------------------------  
# Check if health changed, and if it did, apply instant harming
# ------------------------------------------
scoreboard players operation @s[type=player] fine_hp.tmp0 = @s fine_hp.prev_hp
scoreboard players operation @s[type=player] fine_hp.tmp0 -= @s fine_hp.hp
effect give @s[type=player,scores={fine_hp.tmp0=1..}] minecraft:instant_damage 1 0
tag @s[type=player,scores={fine_hp.tmp0=1..}] add noWorldDamage
# ------------------------------------------
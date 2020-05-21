execute if entity @p[distance=..20] run scoreboard players remove @s[tag=!charging] chargeCooldown 1  
scoreboard players set @s[tag=charging] fine_hp.invul 5
tag @s[nbt={OnGround:1b},tag=charging] add charge_hit 
execute if entity @s[tag=charging] if entity @p[distance=0..3] run tag @s add charge_hit 
execute if entity @s[tag=charge_hit] run particle explosion_emitter ~ ~ ~
execute if entity @s[tag=charge_hit] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.7
data modify entity @s[tag=charge_hit] Attributes[{Name:"generic.followRange"}].Base set value 200
#execute if entity @s[tag=charge_hit] run scoreboard players operation @a[distance=0..2] fine_hp.dmg += @s chargePD
#execute if entity @s[tag=charge_hit] run scoreboard players operation @a[distance=0..2] fine_hp.mdmg += @s chargeMD
execute if entity @s[tag=charge_hit] run scoreboard players operation @a[distance=0..3] fine_hp.dmg += @s chargePD
execute if entity @s[tag=charge_hit] run scoreboard players operation @a[distance=0..3] fine_hp.mdmg += @s chargeMD
execute if entity @s[tag=charge_hit] run scoreboard players operation @a[distance=0..4] fine_hp.dmg += @s chargePD
execute if entity @s[tag=charge_hit] run scoreboard players operation @a[distance=0..4] fine_hp.mdmg += @s chargeMD 
scoreboard players set @s[tag=charge_hit] chargeVY 0
scoreboard players set @s[tag=charge_hit] chargeVX 0 
execute if entity @s[tag=charging,tag=!blocked] store result entity @s Motion[0] double 0.001 run scoreboard players get @s chargeVY
execute if entity @s[tag=charging,tag=!blocked] store result entity @s Motion[2] double 0.001 run scoreboard players get @s chargeVX 
tag @s[tag=charge_hit] remove charging
tag @s[tag=charge_hit] remove charge_hit 
tag @s[tag=!charging] remove blocked 
tp @s[scores={chargeCooldown=0..1}] ~ ~ ~ facing entity @p
execute if entity @s[scores={chargeCooldown=0..30}] run particle minecraft:flame ~ ~1 ~ 0.25 0.25 0.25 0.1 10
execute if entity @s[scores={chargeCooldown=0..30}] run playsound minecraft:entity.tnt.primed master @a
effect give @s[scores={chargeCooldown=10..30}] slowness 1
execute if entity @s[tag=charging] run particle minecraft:flame ~ ~1 ~ 0.25 0.25 0.25 0.1 10
execute if entity @s[tag=charging] run playsound minecraft:entity.tnt.primed master @a 
execute as @s[scores={chargeCooldown=0}] at @s run function adventure_map:spells/mobs/charge 
scoreboard players operation @s[scores={chargeCooldown=0}] chargeCooldown = @s chargeCDBase
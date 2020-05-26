# Splash melee
tag @a[tag=mage,scores={use.golden_hoe=1}] add mage_splash
execute as @a[tag=mage_splash] at @s positioned ^ ^ ^2 anchored eyes run scoreboard players operation @e[distance=0..4,type=!minecraft:player,scores={fine_hp.hp=1..},limit=4,sort=nearest] fine_hp.mdmg += @s spell.0.power
tag @a remove mage_splash
scoreboard players set @a[tag=mage,scores={use.golden_hoe=1}] fine_hp.tmp0 2
execute as @a[tag=mage,scores={use.golden_hoe=1}] run scoreboard players operation @s fine_hp.tmp0 *= @s mana.mana_regen
execute as @a[tag=mage,scores={use.golden_hoe=1}] run scoreboard players operation @s mana.mana += @s fine_hp.tmp0
scoreboard players set @a use.golden_hoe 0 
# Class restriction
effect give @a[tag=!mage,nbt={SelectedItem:{tag:{display:{Lore:['{"text":"Mage: Staff"}']}}}}] slowness 3 9
effect give @a[tag=!mage,nbt={SelectedItem:{tag:{display:{Lore:['{"text":"Mage: Staff"}']}}}}] weakness 3 9
tag @a[tag=mage,nbt={SelectedItem:{tag:{display:{Lore:['{"text":"Mage: Staff"}']}}}}] add holdingWeapon
tag @a[tag=mage,nbt={SelectedItemSlot:0}] remove holdingWeapon
effect give @a[tag=mage,tag=holdingWeapon] slowness 3 9
effect give @a[tag=mage,tag=holdingWeapon] weakness 3 9
tag @a[tag=mage] remove holdingWeapon 
# Replenish items
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Staff"}']}}}},tag=!processed] add replenish_0
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Primary Spell"}']}}}},tag=!processed] add replenish_1
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Secondary Spell"}']}}}},tag=!processed] add replenish_2 
execute as @e[tag=replenish_0] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:0b}]},tag=mage] add replenish_fail
execute as @e[tag=replenish_1] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:1b}]},tag=mage] add replenish_fail
execute as @e[tag=replenish_2] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:2b}]},tag=mage] add replenish_fail 
# Weapon drop protection
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Basic Staff"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1,HideFlags:4, Enchantments:[ {id:"minecraft:sharpness",lvl:3} ], display:{ Name:'{"italic":false,"text":"Basic Staff"}',Lore:['{"text":"Mage: Staff"}','{"text":"Mage: Slot 1"}'] }} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Fiery Staff"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1,HideFlags:5, Enchantments:[{id:"minecraft:unbreaking",lvl:1}], display:{ Name:'{"italic":false,"text":"Fiery Staff"}', Lore:[ '{"text":"Mage: Staff"}',  '{"text":"+8 Fireball Magic Damage"}', '{"text":"Mage: Slot 1"}' ] } } 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Whirlwind Staff"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1,HideFlags:4, Enchantments:[{id:"minecraft:sharpness",lvl:1}], display:{ Name:'{"italic":false,"text":"Whirlwind Staff"}', Lore:[ '{"italic":false,"color":"white","text":"Attacks faster."}', '{"text":"Mage: Staff"}',  '{"text":"+1 Zephyr Speed"}',  '{"text":"+2 Melee Splash Damage"}', '{"text":"Mage: Slot 1"}' ] }, AttributeModifiers:[ {AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:4,Operation:0,UUIDLeast:595046,UUIDMost:291484,Slot:"mainhand"} ]} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Embiggened Staff"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1,HideFlags:4, Enchantments:[ {id:"minecraft:sharpness",lvl:5} ], display:{ Name:'{"italic":false,"text":"Embiggened Staff"}', Lore:[ '{"italic":false,"color":"white","text":"Is bigger. Apparently."}', '{"text":"Mage: Staff"}', '{"text":"Mage: Slot 1"}' ] }} 1  
# Fireball spell
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Fireball 1"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:blaze_rod{Enchantments:[{}], display:{ Name:'{"italic":false,"text":"Fireball 1"}', Lore:[ '{"italic":false,"color":"white","text":"Shoot a fireball that explodes on contact or after 0.5s,"}','{"italic":false,"color":"white","text":"  dealing 3 physical damage and 8 magic damage."}','{"italic":false,"color":"white","text":"Damage decreases with distance from explosion center."}','{"italic":false,"color":"white","text":"A direct hit does even more damage."}','{"italic":false,"color":"white","text":"Can hurt self and allies!"}','{"italic":false,"color":"blue","text":"Cost: 200MP"}', '{"text":"Mage: Primary Spell"}', '{"text":"Mage: Fireball Spell"}', '{"text":"Mage: Slot 2"}' ] }} 1
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Fireball 2"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:blaze_rod{Enchantments:[{}], display:{ Name:'{"italic":false,"text":"Fireball 2"}', Lore:[ '{"italic":false,"color":"white","text":"Shoot a fireball that explodes on contact or after 0.5s,"}','{"italic":false,"color":"white","text":"  dealing 3 physical damage and 8 magic damage."}','{"italic":false,"color":"white","text":"Damage decreases with distance from explosion center."}','{"italic":false,"color":"white","text":"A direct hit does even more damage."}','{"italic":false,"color":"white","text":"Can hurt self and allies!"}','{"italic":false,"color":"blue","text":"Cost: 200MP"}', '{"text":"Mage: Primary Spell"}',  '{"text":"Mage: Fireball Spell"}',  '{"text":"+8 Fireball Magic Damage"}', '{"text":"Mage: Slot 2"}' ] }} 1
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Cyclone Spear 1"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:feather{Enchantments:[{}], display:{ Name:'{"italic":false,"text":"Cyclone Spear 1"}', Lore:[ '{"italic":false,"color":"white","text":"Shoot a straight projectile, dealing 25 damage."}','{"italic":false,"color":"white","text":"Can be stopped by thick crowds."}','{"italic":false,"color":"blue","text":"Cost: 500MP"}', '{"text":"Mage: Primary Spell"}', '{"text":"Mage: Cyclone Spear Spell"}', '{"text":"Mage: Slot 2"}' ] }} 1 
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Fireball Spell"}']}}}},scores={replenish_ok=1}] at @s run function adventure_map:spells/mage/fireball 
# Loop stuff for mage fireball
# X and Y velocity always being set
execute as @e[tag=mage_fireball] store result entity @s direction[0] double 0.02 run scoreboard players get @s fine_hp.tmp0
execute as @e[tag=mage_fireball] store result entity @s direction[2] double 0.02 run scoreboard players get @s fine_hp.tmp2 
scoreboard players remove @e[tag=mage_fireball] fine_hp.tmp3 1
kill @e[tag=mage_fireball,scores={fine_hp.tmp3=0}] 
execute at @e[tag=mage_fireball] run particle flame ~ ~ ~ 0 0 0 0.05 5 
execute at @e[tag=mage_fireball] run kill @e[tag=mage_fireball_tracker,limit=1,sort=nearest]
execute as @e[tag=mage_fireball_tracker] at @s run scoreboard players operation @e[distance=0..3,tag=!archer,tag=!knight] fine_hp.mdmg += @s spell.1.power
execute as @e[tag=mage_fireball_tracker] at @s run scoreboard players operation @e[distance=0..5,tag=!archer,tag=!knight] fine_hp.mdmg += @s spell.1.power
execute at @e[tag=mage_fireball_tracker] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=mage_fireball_tracker] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.7 
execute at @e[tag=mage_fireball] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["mage_fireball_tracker"]}
execute as @e[tag=mage_fireball] at @s run scoreboard players operation @e[distance=0..2,sort=nearest,tag=mage_fireball_tracker] spell.1.power = @s spell.1.power  
# Cyclone Spear spell
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Cyclone Spear 1"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:feather{Enchantments:[{}], display:{ Name:'{"italic":false,"text":"Cyclone Spear 1"}', Lore:[ '{"italic":false,"color":"white","text":"Shoot a straight projectile, dealing 25 damage."}','{"italic":false,"color":"white","text":"Can be stopped by thick crowds."}','{"italic":false,"color":"blue","text":"Cost: 500MP"}', '{"text":"Mage: Primary Spell"}', '{"text":"Mage: Cyclone Spear Spell"}', '{"text":"Mage: Slot 2"}' ] }} 1 
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Cyclone Spear Spell"}']}}}},scores={replenish_ok=1}] at @s run function adventure_map:spells/mage/wind_spear 
# Loop stuff for mage wind spear
# X and Y and Z velocity always being set
execute as @e[tag=mage_wind_spear] store result entity @s Motion[0] double 0.03 run scoreboard players get @s fine_hp.tmp0
execute as @e[tag=mage_wind_spear] store result entity @s Motion[1] double 0.03 run scoreboard players get @s fine_hp.tmp1
execute as @e[tag=mage_wind_spear] store result entity @s Motion[2] double 0.03 run scoreboard players get @s fine_hp.tmp2 
execute at @e[tag=mage_wind_spear] run particle end_rod ~ ~ ~ 0 0 0 0.05 5
execute at @e[tag=mage_wind_spear] run particle sneeze ~ ~ ~ 0 0 0 0.05 5
execute at @e[tag=mage_wind_spear] run playsound minecraft:block.bamboo.place master @a 
execute as @e[tag=mage_wind_spear] at @s run scoreboard players operation @e[distance=0..2,team=Enemies,tag=windSpeared] fine_hp.tmp0 = @s fine_hp.tmp4
execute as @e[tag=mage_wind_spear] at @s run execute as @e[distance=0..2,team=Enemies,tag=windSpeared] run scoreboard players operation @s fine_hp.tmp0 -= @s spell.2.power
execute as @e[tag=mage_wind_spear] at @s run scoreboard players operation @e[distance=0..2,team=Enemies,tag=windSpeared,scores={fine_hp.tmp0=1..}] fine_hp.mdmg += @s spell.2.power
execute as @e[tag=mage_wind_spear] at @s run execute at @e[distance=0..2,team=Enemies,tag=windSpeared,scores={fine_hp.tmp0=1..}] run scoreboard players remove @s fine_hp.tmp3 1
execute as @e[tag=mage_wind_spear] at @s run scoreboard players operation @e[distance=0..2,team=Enemies] spell.2.power = @s fine_hp.tmp4
execute as @e[tag=mage_wind_spear] at @s run scoreboard players operation @e[distance=0..2,team=Enemies,tag=!windSpeared] fine_hp.mdmg += @s spell.2.power
execute as @e[tag=mage_wind_spear] at @s run execute at @e[distance=0..2,team=Enemies,tag=!windSpeared] run scoreboard players remove @s fine_hp.tmp3 1
execute as @e[tag=mage_wind_spear] at @s run tag @e[distance=0..2,team=Enemies,tag=!windSpeared] add windSpeared 
scoreboard players remove @e[tag=mage_wind_spear] fine_hp.tmp3 1
kill @e[tag=mage_wind_spear,scores={fine_hp.tmp3=..0}] 
execute as @e[tag=mage_wind_spear] at @s run execute as @e[distance=0..2,team=Enemies] store result score @s fine_hp.tmp0 run data get entity @s Motion[0] 500
execute as @e[tag=mage_wind_spear] at @s run execute as @e[distance=0..2,team=Enemies] store result score @s fine_hp.tmp2 run data get entity @s Motion[2] 500
execute as @e[tag=mage_wind_spear] at @s run scoreboard players operation @e[distance=0..2,team=Enemies] fine_hp.tmp0 += @s fine_hp.tmp0
execute as @e[tag=mage_wind_spear] at @s run scoreboard players operation @e[distance=0..2,team=Enemies] fine_hp.tmp2 += @s fine_hp.tmp2
execute as @e[tag=mage_wind_spear] at @s run execute as @e[distance=0..2,team=Enemies] store result entity @s Motion[0] double 0.002 run scoreboard players get @s fine_hp.tmp0
execute as @e[tag=mage_wind_spear] at @s run execute as @e[distance=0..2,team=Enemies] run data modify entity @s Motion[1] set value 0.25
execute as @e[tag=mage_wind_spear] at @s run execute as @e[distance=0..2,team=Enemies] store result entity @s Motion[2] double 0.002 run scoreboard players get @s fine_hp.tmp2 
# Zephyr spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Zephyr 1"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:magma_cream{Enchantments:[{}],display:{Name:'{"italic":false,"text":"Zephyr 1"}',Lore:['{"italic":false,"color":"white","text":"Grant Speed II to caster for 5 seconds."}','{"italic":false,"color":"white","text":"Grant Strength I to caster and allies for 5 seconds."}','{"italic":false,"color":"white","text":"Grant Speed I to caster and allies for 80 seconds."}','{"italic":false,"color":"blue","text":"Cost: 500MP"}', '{"text":"Mage: Secondary Spell"}', '{"text":"Mage: Zephyr Spell"}','{"text":"Mage: Slot 3"}']}} 1 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Tag with zephyr speed boost, and remove mana from player
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Zephyr Spell"}']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] store success score @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] fine_hp.tmp0 run tag @s add zephyr_boost
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 500 
execute as @e[tag=zephyr_boost] at @s run scoreboard players operation @s fine_hp.tmp0 = @p[distance=0..4,scores={fine_hp.tmp0=1},tag=mage] spell.4.power 
execute at @e[tag=zephyr_boost] run playsound minecraft:block.beacon.power_select master @a[distance=0..8] ~ ~ ~
execute at @e[tag=zephyr_boost] run effect give @a[distance=0..8] minecraft:speed 80 0
execute at @e[tag=zephyr_boost] run effect give @a[distance=0..8] minecraft:strength 5 0
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=1}] run effect give @a[distance=0..8] minecraft:speed 5 1
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=2}] run effect give @a[distance=0..8] minecraft:speed 5 2
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=3}] run effect give @a[distance=0..8] minecraft:speed 5 3
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=4}] run effect give @a[distance=0..8] minecraft:speed 5 4   
# Discharge spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Discharge 1"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:end_rod{Enchantments:[{}], display:{ Name:'{"italic":false,"text":"Discharge 1"}', Lore:[ '{"italic":false,"color":"white","text":"Deal 3 magic damage and Stun nearby enemies."}','{"italic":false,"color":"white","text":"Grant Strength I to nearby players for 5 seconds."}','{"italic":false,"color":"blue","text":"Cost: 500MP"}',  '{"text":"Mage: Secondary Spell"}',  '{"text":"Mage: Discharge Spell"}', '{"text":"Mage: Slot 3"}' ] }} 1 
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Discharge Spell"}']}}}},scores={replenish_ok=1}] at @s run tag @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] add discharge_cast
execute as @a[tag=discharge_cast] at @s run function adventure_map:spells/mage/discharge  
# Arcane Explosion spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"italic":false,"text":"Arcane Explosion 1"}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:nether_star{Enchantments:[{}],display:{Name:'{"italic":false,"text":"Arcane Explosion 1"}',Lore:['{"italic":false,"color":"white","text":"Push enemies away."}','{"italic":false,"color":"blue","text":"Cost: 400MP"}', '{"text":"Mage: Secondary Spell"}', '{"text":"Mage: Arcane Explosion Spell"}','{"text":"Mage: Slot 3"}']}} 1 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Tag with arcane explosion, and remove mana from player
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['{"text":"Mage: Arcane Explosion Spell"}']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] store success score @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] fine_hp.tmp0 run tag @s add arcane_explode
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 400 
execute as @e[tag=arcane_explode] at @s run scoreboard players operation @s fine_hp.tmp0 = @p[distance=0..4,scores={fine_hp.tmp0=1},tag=mage] spell.3.power 
execute at @e[tag=arcane_explode] run playsound minecraft:entity.wither.spawn master @a[distance=0..8] ~ ~ ~
execute at @e[tag=arcane_explode] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 150 
# Record source x and z, and deal damage
execute as @e[tag=arcane_explode] at @s store result score @e[team=Enemies,distance=0..8] fine_hp.tmp1 run data get entity @s Pos[0] 100
execute as @e[tag=arcane_explode] at @s store result score @e[team=Enemies,distance=0..8] fine_hp.tmp2 run data get entity @s Pos[2] 100
execute as @e[tag=arcane_explode] at @s run scoreboard players operation @e[team=Enemies,distance=0..7] fine_hp.mdmg += @s fine_hp.tmp0
execute at @e[tag=arcane_explode] run tag @e[team=Enemies,distance=0..7] add repulsed 
# Start doing vector math
# t0, t1 are dx, dz
execute as @e[tag=repulsed] store result score @s fine_hp.tmp0 run data get entity @s Pos[0] 100
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp0 -= @s fine_hp.tmp1
execute as @e[tag=repulsed] store result score @s fine_hp.tmp1 run data get entity @s Pos[2] 100
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp1 -= @s fine_hp.tmp2
# Calculate r^2
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp2 = @s fine_hp.tmp0
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp2 *= @s fine_hp.tmp0
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp3 = @s fine_hp.tmp1
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp3 *= @s fine_hp.tmp1
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp2 += @s fine_hp.tmp3
# Magic number in numerator that happens to make things work nicely, tweak this in smal increments to change repulse kb
scoreboard players set @e[tag=repulsed] fine_hp.tmp3 600000
# K/r^2
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp3 /= @s fine_hp.tmp2
# Kr/r^2
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp0 *= @s fine_hp.tmp3
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp1 *= @s fine_hp.tmp3
# Cap out at velocity 1, technically wrong but works
scoreboard players set @e[tag=repulsed] fine_hp.tmp2 1500
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp0 < @s fine_hp.tmp2
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp1 < @s fine_hp.tmp2
scoreboard players set @e[tag=repulsed] fine_hp.tmp2 -1500
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp0 > @s fine_hp.tmp2
execute as @e[tag=repulsed] run scoreboard players operation @s fine_hp.tmp1 > @s fine_hp.tmp2
# Finally store back into entity data.
execute as @e[tag=repulsed] store result entity @s Motion[0] double 0.001 run scoreboard players get @s fine_hp.tmp0
execute as @e[tag=repulsed] run data modify entity @s Motion[1] set value 0.5
execute as @e[tag=repulsed] store result entity @s Motion[2] double 0.001 run scoreboard players get @s fine_hp.tmp1
tag @e[tag=repulsed,tag=charging] add blocked
tag @e[tag=repulsed] remove repulsed 
kill @e[scores={replenish_ok=1}] 
tag @e[tag=replenish_0] add processed
tag @e[tag=replenish_1] add processed
tag @e[tag=replenish_2] add processed
tag @e[tag=replenish_0] remove replenish_0
tag @e[tag=replenish_1] remove replenish_1
tag @e[tag=replenish_2] remove replenish_2
tag @a remove replenish_fail 
# Apply buffs
scoreboard players set @a[tag=mage] spell.1.power 4
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['{"text":"+8 Fireball Magic Damage"}']}}}]}] spell.1.power 4
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['{"text":"+8 Fireball Magic Damage"}']}}}]}] spell.1.power 4
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['{"text":"+8 Fireball Magic Damage"}']}}}]}] spell.1.power 4 
scoreboard players set @a[tag=mage] spell.2.power 25
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['{"text":"+25 Cyclone Spear damage"}']}}}]}] spell.2.power 25
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['{"text":"+25 Cyclone Spear damage"}']}}}]}] spell.2.power 25
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['{"text":"+25 Cyclone Spear damage"}']}}}]}] spell.2.power 25 
scoreboard players set @a[tag=mage] spell.3.power 0
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['{"text":"+1 Arcane Explosion Magic Damage"}']}}}]}] spell.3.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['{"text":"+1 Arcane Explosion Magic Damage"}']}}}]}] spell.3.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['{"text":"+1 Arcane Explosion Magic Damage"}']}}}]}] spell.3.power 1 
scoreboard players set @a[tag=mage] spell.4.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['{"text":"+1 Zephyr Speed"}']}}}]}] spell.4.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['{"text":"+1 Zephyr Speed"}']}}}]}] spell.4.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['{"text":"+1 Zephyr Speed"}']}}}]}] spell.4.power 1 
scoreboard players set @a[tag=mage] spell.5.power 3
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['{"text":"+2 Discharge damage"}']}}}]}] spell.5.power 3
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['{"text":"+2 Discharge damage"}']}}}]}] spell.5.power 3
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['{"text":"+2 Discharge damage"}']}}}]}] spell.5.power 3 
scoreboard players set @a[tag=mage] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['{"text":"+2 Melee Splash Damage"}']}}}]}] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['{"text":"+2 Melee Splash Damage"}']}}}]}] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['{"text":"+2 Melee Splash Damage"}']}}}]}] spell.0.power 2
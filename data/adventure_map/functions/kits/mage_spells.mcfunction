# Splash melee
tag @a[tag=mage,scores={use.golden_hoe=1}] add mage_splash
execute as @a[tag=mage_splash] at @s positioned ^ ^ ^2 anchored eyes run scoreboard players operation @e[distance=0..4,type=!minecraft:player,scores={fine_hp.hp=1..},limit=4,sort=nearest] fine_hp.mdmg += @s spell.0.power
tag @a remove mage_splash
scoreboard players set @a[tag=mage,scores={use.golden_hoe=1}] fine_hp.tmp0 2
execute as @a[tag=mage,scores={use.golden_hoe=1}] run scoreboard players operation @s fine_hp.tmp0 *= @s mana.mana_regen
execute as @a[tag=mage,scores={use.golden_hoe=1}] run scoreboard players operation @s mana.mana += @s fine_hp.tmp0
scoreboard players set @a use.golden_hoe 0 
# Replenish items
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Mage: Staff"']}}}},tag=!processed] add replenish_0
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Mage: Primary Spell"']}}}},tag=!processed] add replenish_1
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Mage: Secondary Spell"']}}}},tag=!processed] add replenish_2 
execute as @e[tag=replenish_0] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:0b}]},tag=mage] add replenish_fail
execute as @e[tag=replenish_1] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:1b}]},tag=mage] add replenish_fail
execute as @e[tag=replenish_2] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:2b}]},tag=mage] add replenish_fail 
# Weapon drop protection
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Basic Staff","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:3} ], display:{ Name:'{"text":"Basic Staff","italic":false}',Lore:['"Mage: Staff"'] }} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Fiery Staff","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1, Enchantments:[{}], display:{ Name:'{"text":"Fiery Staff","italic":false}', Lore:[ '"Mage: Staff"',  '"+10 Fireball Magic Damage"' ] }} 1  
# Fireball spell
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"text":"Fireball 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:blaze_rod{Enchantments:[{}], display:{ Name:'{"text":"Fireball 1","italic":false}', Lore:[ '{"text":"Shoot a fireball that explodes on contact or after 0.5s,","color":"white","italic":false}','{"text":"  dealing 3 physical damage and 10 magic damage.","color":"white","italic":false}','{"text":"Damage decreases with distance from explosion center.","color":"white","italic":false}','{"text":"A direct hit does even more damage.","color":"white","italic":false}','{"text":"Can hurt self and allies!","color":"white","italic":false}','{"text":"Cost: 200MP","color":"blue","italic":false}', '"Mage: Primary Spell"', '"Mage: Fireball Spell"' ] }} 1
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"text":"Fireball 2","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:blaze_rod{Enchantments:[{}], display:{ Name:'{"text":"Fireball 2","italic":false}', Lore:[ '{"text":"Shoot a fireball that explodes on contact or after 0.5s,","color":"white","italic":false}','{"text":"  dealing 3 physical damage and 10 magic damage.","color":"white","italic":false}','{"text":"Damage decreases with distance from explosion center.","color":"white","italic":false}','{"text":"A direct hit does even more damage.","color":"white","italic":false}','{"text":"Can hurt self and allies!","color":"white","italic":false}','{"text":"Cost: 200MP","color":"blue","italic":false}', '"Mage: Primary Spell"',  '"Mage: Fireball Spell"',  '"+10 Fireball Magic Damage"' ] }} 1 
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Lore:['"Mage: Fireball Spell"']}}}},scores={replenish_ok=1}] at @s run function adventure_map:spells/mage/fireball 
# Loop stuff for mage fireball
# X and Y velocity always being set
execute as @e[tag=mage_fireball] store result entity @s direction[0] double 0.02 run scoreboard players get @s fine_hp.tmp0
execute as @e[tag=mage_fireball] store result entity @s direction[2] double 0.02 run scoreboard players get @s fine_hp.tmp2 
scoreboard players remove @e[tag=mage_fireball] fine_hp.tmp3 1
kill @e[tag=mage_fireball,scores={fine_hp.tmp3=0}] 
execute at @e[tag=mage_fireball] run particle flame ~ ~ ~ 0 0 0 0.05 5 
execute at @e[tag=mage_fireball] run kill @e[tag=mage_fireball_tracker,limit=1,sort=nearest]
execute as @e[tag=mage_fireball_tracker] at @s run scoreboard players operation @e[distance=0..3] fine_hp.mdmg += @s spell.1.power
execute as @e[tag=mage_fireball_tracker] at @s run scoreboard players operation @e[distance=0..5] fine_hp.mdmg += @s spell.1.power
execute at @e[tag=mage_fireball_tracker] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force 
execute at @e[tag=mage_fireball] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["mage_fireball_tracker"]}
execute as @e[tag=mage_fireball] at @s run scoreboard players operation @e[distance=0..2,sort=nearest,tag=mage_fireball_tracker] spell.1.power = @s spell.1.power  
# Zephyr spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Zephyr 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:magma_cream{Enchantments:[{}],display:{Name:'{"text":"Zephyr 1","italic":false}',Lore:['{"text":"Grant Speed II to caster for 5 seconds.","color":"white","italic":false}','{"text":"Grant Strength I to caster and allies for 5 seconds.","color":"white","italic":false}','{"text":"Grant Speed I to caster and allies for 80 seconds.","color":"white","italic":false}','{"text":"Cost: 500MP","color":"blue","italic":false}', '"Mage: Secondary Spell"', '"Mage: Zephyr Spell"']}} 1 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Tag with zephyr speed boost, and remove mana from player
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Mage: Zephyr Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] store success score @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] fine_hp.tmp0 run tag @s add zephyr_boost
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 500 
execute as @e[tag=zephyr_boost] at @s run scoreboard players operation @s fine_hp.tmp0 = @p[distance=0..4,scores={fine_hp.tmp0=1},tag=mage] spell.3.power 
execute at @e[tag=zephyr_boost] run playsound minecraft:block.beacon.power_select master @a[distance=0..8] ~ ~ ~
execute at @e[tag=zephyr_boost] run effect give @a[distance=0..8] minecraft:speed 80 0
execute at @e[tag=zephyr_boost] run effect give @a[distance=0..8] minecraft:strength 5 0
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=1}] run effect give @a[distance=0..8] minecraft:speed 5 1
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=2}] run effect give @a[distance=0..8] minecraft:speed 5 2
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=3}] run effect give @a[distance=0..8] minecraft:speed 5 3
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=4}] run effect give @a[distance=0..8] minecraft:speed 5 4   
# Discharge spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Discharge 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:end_rod{Enchantments:[{}], display:{ Name:'{"text":"Discharge 1","italic":false}', Lore:[ '{"text":"Stun nearby enemies temporarily.","color":"white","italic":false}','{"text":"Grant Strength I to caster for 5 seconds.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}',  '"Mage: Secondary Spell"',  '"Mage: Discharge Spell"' ] }} 1 
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Mage: Discharge Spell"']}}}},scores={replenish_ok=1}] at @s run function adventure_map:spells/mage/discharge  
# Arcane Explosion spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Arcane Explosion 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:nether_star{Enchantments:[{}],display:{Name:'{"text":"Arcane Explosion 1","italic":false}',Lore:['{"text":"Push enemies away.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Mage: Secondary Spell"', '"Mage: Arcane Explosion Spell"']}} 1 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Tag with arcane explosion, and remove mana from player
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Mage: Arcane Explosion Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] store success score @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] fine_hp.tmp0 run tag @s add arcane_explode
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 400 
execute as @e[tag=arcane_explode] at @s run scoreboard players operation @s fine_hp.tmp0 = @p[distance=0..4,scores={fine_hp.tmp0=1},tag=mage] spell.2.power 
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
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+10 Fireball Magic Damage"']}}}]}] spell.1.power 5
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+10 Fireball Magic Damage"']}}}]}] spell.1.power 5
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+10 Fireball Magic Damage"']}}}]}] spell.1.power 5 
scoreboard players set @a[tag=mage] spell.2.power 0
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Arcane Explosion Magic Damage"']}}}]}] spell.2.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+1 Arcane Explosion Magic Damage"']}}}]}] spell.2.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+1 Arcane Explosion Magic Damage"']}}}]}] spell.2.power 1 
scoreboard players set @a[tag=mage] spell.3.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Zephyr Speed"']}}}]}] spell.3.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+1 Zephyr Speed"']}}}]}] spell.3.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+1 Zephyr Speed"']}}}]}] spell.3.power 1 
scoreboard players set @a[tag=mage] spell.4.power 0
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+2 Discharge damage"']}}}]}] spell.4.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+2 Discharge damage"']}}}]}] spell.4.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+2 Discharge damage"']}}}]}] spell.4.power 2 
scoreboard players set @a[tag=mage] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+2 Melee Splash Damage"']}}}]}] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+2 Melee Splash Damage"']}}}]}] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+2 Melee Splash Damage"']}}}]}] spell.0.power 2
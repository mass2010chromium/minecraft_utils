# Splash melee
tag @a[tag=mage,scores={use.golden_hoe=1}] add mage_splash
execute as @a[tag=mage_splash] at @s positioned ^ ^ ^2 anchored eyes run scoreboard players operation @e[distance=0..3,type=!minecraft:player,scores={fine_hp.hp=1..},limit=3,sort=nearest] fine_hp.mdmg += @s spell.0.power
tag @a remove mage_splash
scoreboard players set @a[tag=mage,scores={use.golden_hoe=1}] fine_hp.tmp0 5
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
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'"Basic Staff"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:3}],display:{Name:'"Basic Staff"',Lore:['"Mage: Staff"']}} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'"Fiery Staff"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage] container.0 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{}],display:{Name:'"Fiery Staff"',Lore:['"Mage: Staff"', '"+1 Fireball Power"']}} 1  
# Fireball spell
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'"Fireball 1"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:blaze_rod{Enchantments:[{}],display:{Name:'"Fireball 1"',Lore:['"Mage: Primary Spell"', '"Mage: Fireball Spell"']}} 1
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'"Fireball 2"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] container.1 minecraft:blaze_rod{Enchantments:[{}],display:{Name:'"Fireball 2"',Lore:['"Mage: Primary Spell"', '"Mage: Fireball Spell"', '"+1 Fireball Power"']}} 1 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Trigger fireball summon, and remove mana from player
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Lore:['"Mage: Fireball Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=mage,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=200..}] store success score @p[tag=mage,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=200..}] fine_hp.tmp0 run tag @s add fireball_summon
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 200 
execute at @e[tag=fireball_summon] run playsound minecraft:entity.blaze.shoot master @a[distance=0..8] ~ ~ ~
execute at @e[tag=fireball_summon] run summon minecraft:fireball ~ ~ ~ {direction:[0.0,1.0,0.0],ExplosionPower:0,Tags:["unprocessed","mage_fireball"]}
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] direction set from entity @s Motion
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] direction[1] set value 0.5
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] power set from entity @s Motion
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] power[1] set value -0.1
execute at @e[tag=fireball_summon] store result entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] ExplosionPower int 1 run scoreboard players get @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage] spell.1.power 
execute as @e[tag=fireball_summon] run tag @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] remove unprocessed
execute at @e[tag=mage_fireball] run particle flame ~ ~ ~  
# Zephyr spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'"Zephyr 1"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] container.2 minecraft:magma_cream{Enchantments:[{}],display:{Name:'"Zephyr 1"',Lore:['"Mage: Secondary Spell"', '"Mage: Zephyr Spell"']}} 1 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Tag with zephyr speed boost, and remove mana from player
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Mage: Zephyr Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] store success score @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=500..}] fine_hp.tmp0 run tag @s add zephyr_boost
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 500 
execute as @e[tag=zephyr_boost] at @s store result score @s fine_hp.tmp0 run scoreboard players get @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage] spell.2.power 
execute at @e[tag=zephyr_boost] run playsound minecraft:block.beacon.power_select master @a[distance=0..8] ~ ~ ~
execute at @e[tag=zephyr_boost] run effect give @a[distance=0..8] minecraft:speed 80 0
execute at @e[tag=zephyr_boost] run effect give @a[distance=0..8] minecraft:strength 5 0
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=1}] run effect give @a[distance=0..8] minecraft:speed 5 1
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=2}] run effect give @a[distance=0..8] minecraft:speed 5 2
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=3}] run effect give @a[distance=0..8] minecraft:speed 5 3
execute at @e[tag=zephyr_boost,scores={fine_hp.tmp0=4}] run effect give @a[distance=0..8] minecraft:speed 5 4 
tag @e[tag=unprocessed] remove unprocessed  
kill @e[scores={replenish_ok=1}] 
tag @e[tag=replenish_0] add processed
tag @e[tag=replenish_1] add processed
tag @e[tag=replenish_2] add processed
tag @e[tag=replenish_0] remove replenish_0
tag @e[tag=replenish_1] remove replenish_1
tag @e[tag=replenish_2] remove replenish_2
tag @a remove replenish_fail 
# Apply buffs
scoreboard players set @a[tag=mage] spell.1.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Fireball Power"']}}}]}] spell.1.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+1 Fireball Power"']}}}]}] spell.1.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+1 Fireball Power"']}}}]}] spell.1.power 1 
scoreboard players set @a[tag=mage] spell.2.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Zephyr Speed"']}}}]}] spell.2.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+1 Zephyr Speed"']}}}]}] spell.2.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+1 Zephyr Speed"']}}}]}] spell.2.power 1 
scoreboard players set @a[tag=mage] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+2 Melee Splash Damage"']}}}]}] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+2 Melee Splash Damage"']}}}]}] spell.0.power 2
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+2 Melee Splash Damage"']}}}]}] spell.0.power 2
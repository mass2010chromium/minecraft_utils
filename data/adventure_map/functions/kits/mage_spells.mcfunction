# Apply buffs
scoreboard players set @a[tag=mage] spell.0.power 1
scoreboard players add @a[tag=mage,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Fireball Power"']}}}]}] spell.0.power 1 
# Splash melee
tag @a[tag=mage,scores={use.golden_hoe=1}] add mage_splash
scoreboard players set @a[tag=mage,scores={use.golden_hoe=1}] spell.1.power 2
execute at @a[tag=mage_splash] run scoreboard players operation @e[distance=0..3,type=!minecraft:player,scores={fine_hp.hp=1..},limit=3,sort=nearest] fine_hp.hp -= @p spell.1.power
tag @a remove mage_splash
scoreboard players set @a use.golden_hoe 0 
# Replenish items
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Mage: Staff"']}}}},tag=!processed] add replenish_0
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Mage: Primary Spell"']}}}},tag=!processed] add replenish_1
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Mage: Secondary Spell"']}}}},tag=!processed] add replenish_2 
execute as @e[tag=replenish_0] at @s run tag @p[distance=0..4,nbt={Inventory:[{Slot:0b}]},tag=mage,limit=1] add replenish_fail
execute as @e[tag=replenish_1] at @s run tag @p[distance=0..4,nbt={Inventory:[{Slot:1b}]},tag=mage,limit=1] add replenish_fail
execute as @e[tag=replenish_2] at @s run tag @p[distance=0..4,nbt={Inventory:[{Slot:2b}]},tag=mage,limit=1] add replenish_fail 
# Weapon drop protection
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'"Basic Staff"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage,limit=1] container.0 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Basic Staff"',Lore:['"Mage: Staff"']}} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'"Fiery Staff"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=mage,limit=1] container.0 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Fiery Staff"',Lore:['"Mage: Staff"', '"+1 Fireball Power"']}} 1  
# Fireball spell
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'"Fireball 1"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage,limit=1] container.1 minecraft:blaze_rod{Enchantments:[{}],display:{Name:'"Fireball 1"',Lore:['"Mage: Primary Spell"']}} 1
tag @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'"Fireball 1"'}}}},scores={replenish_ok=1}] add fireball_summon
execute at @e[tag=fireball_summon] run summon minecraft:fireball ~ ~ ~ {direction:[0.0,1.0,0.0],ExplosionPower:0,Tags:["unprocessed"]}
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] direction set from entity @s Motion
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] direction[1] set value 0.5
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] power set from entity @s Motion
execute as @e[tag=fireball_summon] run data modify entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] power[1] set value -0.1
execute at @e[tag=fireball_summon] store result entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] ExplosionPower int 1 run scoreboard players get @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=mage,limit=1] spell.0.power 
execute as @e[tag=fireball_summon] run tag @e[type=minecraft:fireball,sort=nearest,limit=1,tag=unprocessed] remove unprocessed  
# Lightning spell (TODO)
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'"Lightning 1"'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=mage,limit=1] container.2 minecraft:magma_cream{Enchantments:[{}],display:{Name:'"Lightning 1"',Lore:['"Mage: Secondary Spell"']}} 1 
tag @e[tag=unprocessed] remove unprocessed  
kill @e[scores={replenish_ok=1}] 
tag @e[tag=replenish_0] add processed
tag @e[tag=replenish_1] add processed
tag @e[tag=replenish_2] add processed
tag @e[tag=replenish_0] remove replenish_0
tag @e[tag=replenish_1] remove replenish_1
tag @e[tag=replenish_2] remove replenish_2
tag @a remove replenish_fail
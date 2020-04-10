 # Replenish items
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Knight: Sword"']}}}},tag=!processed] add replenish_0
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Knight: Spear"']}}}},tag=!processed] add replenish_1
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Knight: Active Spell"']}}}},tag=!processed] add replenish_2 
tag @e[type=minecraft:trident,nbt={Item:{tag:{display:{Lore:['"Knight: Spear"']}}}},tag=!processed] add replenish_3  
execute as @e[tag=replenish_0] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:0b}]},tag=knight] add replenish_fail
execute as @e[tag=replenish_1] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:1b}]},tag=knight] add replenish_fail
execute as @e[tag=replenish_2] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:2b}]},tag=knight] add replenish_fail
# Maybe need a bigger radius
execute as @e[tag=replenish_3] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:1b}]},tag=knight] add replenish_fail  
# Weapon drop protection
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Basic Sword","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=knight] container.0 minecraft:stone_sword{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1} ], display:{ Name:'{"text":"Basic Sword","italic":false}', Lore:[ '"Knight: Sword"' ] }} 1 
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"text":"Spear 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=knight] container.1 minecraft:trident{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2}],display:{Name:'{"text":"Spear 1","italic":false}',Lore:['"Knight: Spear"']},AttributeModifiers:[]} 1  
# Ground Pound spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Ground Pound 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:anvil{Enchantments:[{}],display:{Name:'{"text":"Ground Pound 1","italic":false}',Lore:['{"text":"Leap in the air and slam back down,","color":"white","italic":false}','{"text":"  launching nearby enemies airborne and","color":"white","italic":false}','{"text":"  dealing 20 physical damage.","color":"white","italic":false}','{"text":"Grants temporary invulnerability while leaping.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Knight: Active Spell"', '"Knight: Ground Pound Spell"']}} 1 
# Set up spell success temp var
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Knight: Ground Pound Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=600..}] store success score @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=600..}] fine_hp.tmp0 run tag @s add cast_pound 
# Remove mana if successful
scoreboard players remove @a[tag=knight,scores={fine_hp.tmp0=1}] mana.mana 600 
# Start the lift motion
execute as @e[tag=cast_pound] at @s run tag @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] add pound_start 
scoreboard players set @a[tag=pound_start] spell.8.time 6
effect give @a[tag=pound_start] minecraft:levitation 1 22
tag @a[tag=pound_start] add pound
tag @a[tag=pound_start] remove pound_start
scoreboard players set @a[tag=pound] fine_hp.invul 5 
# Decrement lift time
scoreboard players remove @a[scores={spell.8.time=1..}] spell.8.time 1
effect clear @a[scores={spell.8.time=..1}] minecraft:levitation
# Pound if we hit the ground
tag @a[tag=pound,nbt={OnGround:1b},scores={spell.8.time=0}] add grounded
tag @a[tag=grounded] remove pound
execute at @a[tag=grounded] run particle minecraft:explosion_emitter ~ ~ ~
execute at @a[tag=grounded] run playsound minecraft:block.anvil.place master @a[distance=0..12] ~ ~ ~
execute at @a[tag=grounded] run tag @e[team=Enemies,distance=0..4] add pounded
execute as @a[tag=grounded] at @s run scoreboard players operation @e[tag=pounded] fine_hp.dmg += @s spell.8.power
tag @a[tag=grounded] remove grounded 
execute at @e[tag=pounded] run particle minecraft:block iron_block ~ ~1 ~ 0.25 0.5 0.25 0 100
execute as @e[tag=pounded] run data modify entity @s Motion[1] set value 0.8
tag @e[tag=pounded] remove pounded 
# Trident throwing (TODO)
execute as @e[type=trident,tag=!processed] run data modify entity @s SoundEvent set value "minecraft:entity.blaze.hurt"  
tag @e[tag=replenish_0] add processed
tag @e[tag=replenish_1] add processed
tag @e[tag=replenish_2] add processed
tag @e[tag=replenish_3] add processed
tag @e[tag=replenish_0] remove replenish_0
tag @e[tag=replenish_1] remove replenish_1
tag @e[tag=replenish_2] remove replenish_2
tag @e[tag=replenish_3] remove replenish_3
tag @a remove replenish_fail 
# Apply buffs and such
scoreboard players set @a[tag=knight] spell.8.power 20
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Ground Pound Power"']}}}]}] spell.8.power 15
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+1 Ground Pound Power"']}}}]}] spell.8.power 15
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+1 Ground Pound Power"']}}}]}] spell.8.power 15
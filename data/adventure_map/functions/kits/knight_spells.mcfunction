# Splash melee
tag @a[tag=knight,scores={use.stone_sword=1,mana.mscd=0}] add knight_mana_steal
execute as @a[tag=knight_mana_steal] run scoreboard players operation @s mana.mana += @s mana.mana_steal
execute as @a[tag=knight_mana_steal] run scoreboard players set @s mana.mscd 10
scoreboard players set @a use.stone_sword 0
tag @a remove knight_mana_steal 
# Replenish items
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Knight: Sword"']}}}},tag=!processed] add replenish_0
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Knight: Spear"']}}}},tag=!processed] add replenish_1
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['"Knight: Active Spell"']}}}},tag=!processed] add replenish_2 
tag @e[type=minecraft:trident,nbt={Trident:{tag:{display:{Lore:['"Knight: Spear"']}}}},tag=!processed] add replenish_3  
execute as @e[tag=replenish_0] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:0b}]},tag=knight] add replenish_fail
execute as @e[tag=replenish_1] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:2b}]},tag=knight] add replenish_fail
execute as @e[tag=replenish_2] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:1b}]},tag=knight] add replenish_fail
# Maybe need a bigger radius
execute as @e[tag=replenish_3] at @s run tag @a[distance=0..4,nbt={Inventory:[{Slot:2b}]},tag=knight] add replenish_fail  
# Weapon drop protection
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Basic Sword","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=knight] container.0 minecraft:stone_sword{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1} ], display:{ Name:'{"text":"Basic Sword","italic":false}', Lore:[ '"Knight: Sword"' ] }} 1 
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"text":"Depths\' Curse 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"' ] },AttributeModifiers:[]} 1  
# Ground Pound spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Ground Pound 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=knight] container.1 minecraft:anvil{Enchantments:[{}],display:{Name:'{"text":"Ground Pound 1","italic":false}',Lore:['{"text":"Leap in the air and slam back down,","color":"white","italic":false}','{"text":"  launching nearby enemies airborne and","color":"white","italic":false}','{"text":"  dealing 20 physical damage.","color":"white","italic":false}','{"text":"Grants temporary invulnerability while leaping.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Knight: Active Spell"', '"Knight: Ground Pound Spell"']}} 1 
# Set up spell success temp var
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Knight: Ground Pound Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=knight,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=600..}] store success score @p[tag=knight,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=600..}] fine_hp.tmp0 run tag @s add cast_pound 
# Remove mana if successful
scoreboard players remove @a[tag=knight,scores={fine_hp.tmp0=1}] mana.mana 600 
# Start the lift motion
execute as @e[tag=cast_pound] at @s run tag @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=knight] add pound_start 
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
execute as @e[tag=replenish_3,nbt={Trident:{tag:{display:{Name:'{"text":"Depths\' Curse 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"' ] },AttributeModifiers:[]} 1 
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_3,nbt={Trident:{tag:{display:{Lore:['"Knight: Depths\' Curse"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] store success score @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] fine_hp.tmp0 run tag @s add depths_curse 
tag @e[tag=depths_curse] add thrown_trident 
kill @e[tag=replenish_3,scores={replenish_ok=1},tag=!thrown_trident] 
# Remove mana if successful
scoreboard players remove @a[tag=knight,scores={fine_hp.tmp0=1}] mana.mana 400 
execute as @e[tag=knight,scores={fine_hp.tmp0=1}] at @s run scoreboard players operation @e[tag=depths_curse,sort=nearest,limit=1,tag=!processed] spell.6.power = @s spell.6.power 
# Itemify tridents
execute as @e[tag=replenish_3,tag=!depths_curse,nbt={Trident:{tag:{display:{Name:'{"text":"Depths\' Curse 1","italic":false}'}}}}] at @s run summon item ~ ~ ~ {Item:{id:trident,Count:1b,tag:{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"' ] },AttributeModifiers:[]}}} 
execute as @e[tag=thrown_trident] run data modify entity @s pickup set value 0b
kill @e[tag=replenish_3,tag=!thrown_trident]
scoreboard players set @e[tag=thrown_trident] replenish_ok 0
tag @e[tag=thrown_trident,nbt={inGround:1b}] add hit_trident
tag @e[tag=thrown_trident,nbt={DealtDamage:1b}] add hit_trident
tag @e[tag=thrown_trident,nbt={DealtDamage:1b}] add hit_mob_trident
execute as @e[tag=depths_curse,tag=!processed] run data modify entity @s SoundEvent set value "minecraft:entity.slime.attack" 
execute at @e[tag=hit_trident,tag=depths_curse] run effect give @e[team=Enemies,distance=0..4] minecraft:slowness 10 0
execute as @e[tag=hit_trident,tag=depths_curse] at @s run scoreboard players operation @e[team=Enemies,distance=0..4] fine_hp.mdmg += @s spell.6.power
execute at @e[tag=hit_trident,tag=depths_curse] run particle minecraft:splash ~ ~0.25 ~ 1.5 0.25 1.5 0 200
execute at @e[tag=hit_trident,tag=depths_curse] run particle minecraft:bubble_pop ~ ~0.25 ~ 1.5 0.25 1.5 0 200
kill @e[tag=hit_trident]  
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
scoreboard players set @a[tag=knight] spell.6.power 6
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+6 Depths\' Curse Magic Damage"']}}}]}] spell.6.power 6
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+6 Depths\' Curse Magic Damage"']}}}]}] spell.6.power 6
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+6 Depths\' Curse Magic Damage"']}}}]}] spell.6.power 6
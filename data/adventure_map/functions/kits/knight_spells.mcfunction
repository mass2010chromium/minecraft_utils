# Splash melee
tag @a[tag=knight,scores={use.stone_sword=1,mana.mscd=0}] add knight_mana_steal
tag @a[tag=knight,scores={use.golden_sword=1,mana.mscd=0}] add knight_mana_steal
tag @a[tag=knight,scores={use.iron_sword=1,mana.mscd=0}] add knight_mana_steal
tag @a[tag=knight,scores={use.diam_sword=1,mana.mscd=0}] add knight_mana_steal
execute as @a[tag=knight_mana_steal] run scoreboard players operation @s mana.mana += @s mana.mana_steal
execute as @a[tag=knight_mana_steal] run scoreboard players set @s mana.mscd 10
scoreboard players set @a use.stone_sword 0
scoreboard players set @a use.golden_sword 0
scoreboard players set @a use.iron_sword 0
scoreboard players set @a use.diam_sword 0
tag @a remove knight_mana_steal 
# Class restriction
effect give @a[tag=!knight,nbt={SelectedItem:{tag:{display:{Lore:['"Knight: Sword"']}}}}] slowness 3 9
effect give @a[tag=!knight,nbt={SelectedItem:{tag:{display:{Lore:['"Knight: Sword"']}}}}] weakness 3 9
tag @a[tag=knight,nbt={SelectedItem:{tag:{display:{Lore:['"Knight: Sword"']}}}}] add holdingWeapon
tag @a[tag=knight,nbt={SelectedItemSlot:0}] remove holdingWeapon
effect give @a[tag=knight,tag=holdingWeapon] slowness 3 9
effect give @a[tag=knight,tag=holdingWeapon] weakness 3 9
tag @a[tag=knight] remove holdingWeapon 
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
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Basic Sword","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=knight] container.0 minecraft:stone_sword{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1} ], display:{ Name:'{"text":"Basic Sword","italic":false}', Lore:[ '"Knight: Sword"', '"Knight: Slot 1"' ] }} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Cast-Iron Sword","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=knight] container.0 minecraft:iron_sword{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1} ], display:{ Name:'{"text":"Cast-Iron Sword","italic":false}', Lore:[ '"Knight: Sword"', '"Knight: Slot 1"' ] }} 1
execute as @e[tag=replenish_0,nbt={Item:{tag:{display:{Name:'{"text":"Sandesite Sword","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:0},tag=!replenish_fail,tag=knight] container.0 minecraft:golden_sword{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1} ], display:{ Name:'{"text":"Cast-Iron Sword","italic":false}', Lore:[ '"Knight: Sword"', '"Knight: Slot 1"' ] }} 1  
# Trident drop protection
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"text":"Depths\' Curse 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"', '"Knight: Slot 3"' ] },AttributeModifiers:[]} 1
execute as @e[tag=replenish_1,nbt={Item:{tag:{display:{Name:'{"text":"Mob Hook 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Mob Hook 1","italic":false}', Lore:[ '{"text":"Shoot a hook that pulls mobs towards you,","color":"white","italic":false}','{"text":"  and deals physical damage.","color":"white","italic":false}','{"text":"Cost: 350MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Mob Hook Spell"', '"Knight: Slot 3"' ] },AttributeModifiers:[]} 1   
# Ground Pound spell
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Ground Pound 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=knight] container.1 minecraft:anvil{Enchantments:[{}], display:{ Name:'{"text":"Ground Pound 1","italic":false}', Lore:[ '{"text":"Leap in the air and slam back down,","color":"white","italic":false}','{"text":"  launching nearby enemies airborne and","color":"white","italic":false}','{"text":"  dealing 20 physical damage.","color":"white","italic":false}','{"text":"Grants temporary invulnerability while leaping.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Knight: Active Spell"', '"Knight: Ground Pound Spell"', '"Knight: Slot 2"' ] }} 1
# Set up spell success temp var
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Knight: Ground Pound Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=knight,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=600..}] store success score @p[tag=knight,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=600..}] fine_hp.tmp0 run tag @s add cast_pound
# Remove mana if successful
scoreboard players remove @a[tag=knight,scores={fine_hp.tmp0=1}] mana.mana 600
# Start the lift motion
execute as @e[tag=cast_pound] at @s run tag @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=knight] add pound_start
scoreboard players set @a[tag=pound_start] spell.10.time 6
effect give @a[tag=pound_start] minecraft:levitation 1 22 true
tag @a[tag=pound_start] add pound
tag @a[tag=pound_start] remove pound_start
scoreboard players set @a[tag=pound] fine_hp.invul 5
# Decrement lift time
scoreboard players remove @a[scores={spell.10.time=1..}] spell.10.time 1
effect clear @a[scores={spell.10.time=..1}] minecraft:levitation
# Pound if we hit the ground
tag @a[tag=pound,nbt={OnGround:1b},scores={spell.10.time=0}] add grounded
tag @a[tag=grounded] remove pound
execute at @a[tag=grounded] run particle minecraft:explosion_emitter ~ ~ ~
execute at @a[tag=grounded] run playsound minecraft:block.anvil.place master @a[distance=0..12] ~ ~ ~
execute at @a[tag=grounded] run tag @e[team=Enemies,distance=0..4] add pounded
execute as @a[tag=grounded] at @s run scoreboard players operation @e[tag=pounded] fine_hp.dmg += @s spell.10.power
tag @a[tag=grounded] remove grounded 
execute at @e[tag=pounded] run particle minecraft:block iron_block ~ ~1 ~ 0.25 0.5 0.25 0 100
execute as @e[tag=pounded] run data modify entity @s Motion[1] set value 0.8
tag @e[tag=pounded] remove pounded  
# Shield Spell continuous commands
scoreboard players set @a[tag=!knight] spell.11.uses 0
clear @a[scores={spell.11.uses=0},gamemode=adventure] shield 
scoreboard players remove @a[scores={shield_used=1..}] spell.11.uses 1
execute at @a[scores={shield_used=1..}] run effect give @e[distance=0..3,team=Enemies] slowness 5
replaceitem entity @a[scores={spell.11.uses=8}] weapon.offhand shield{Damage:1,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=7}] weapon.offhand shield{Damage:42,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=6}] weapon.offhand shield{Damage:83,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=5}] weapon.offhand shield{Damage:124,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=4}] weapon.offhand shield{Damage:165,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=3}] weapon.offhand shield{Damage:206,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=2}] weapon.offhand shield{Damage:247,Enchantments:[{id:unbreaking,lvl:400}]}
replaceitem entity @a[scores={spell.11.uses=1}] weapon.offhand shield{Damage:288,Enchantments:[{id:unbreaking,lvl:400}]}
scoreboard players set @a shield_used 0 
scoreboard players remove @a[scores={spell.11.time=1..}] spell.11.time 1
scoreboard players set @a[scores={spell.11.uses=0}] spell.11.time 0
scoreboard players set @a[scores={spell.11.time=0}] spell.11.uses 0 
# Shield Spell trigger
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Name:'{"text":"Shield 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:1},tag=!replenish_fail,tag=knight] container.1 minecraft:iron_door{Enchantments:[{}], display:{ Name:'{"text":"Shield 1","italic":false}', Lore:[ '{"text":"Grants a shield that blocks 4 melee hits, lasting 20s.","color":"white","italic":false}','{"text":"Slows nearby enemies when the shield is used.","color":"white","italic":false}','{"text":"Can\'t block ranged projectiles or area attacks.","color":"white","italic":false}','{"text":"Cost: 300MP","color":"blue","italic":false}', '"Knight: Active Spell"', '"Knight: Shield Spell"', '"Knight: Slot 2"' ] }} 1
# Set up spell success temp var
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_2,nbt={Item:{tag:{display:{Lore:['"Knight: Shield Spell"']}}}},scores={replenish_ok=1}] run execute at @s run tag @p[tag=knight,nbt={SelectedItemSlot:1},tag=!replenish_fail,distance=0..4,scores={mana.mana=300..}] add cast_shield
# Remove mana if successful
scoreboard players remove @a[tag=cast_shield] mana.mana 300
scoreboard players set @a[tag=cast_shield] spell.11.time 400
execute as @a[tag=cast_shield] run scoreboard players operation @s spell.11.uses = @s spell.11.power  
tag @a[tag=cast_shield] remove cast_shield  
# Trident throwing (TODO)
# Depth's Curse
execute as @e[tag=replenish_3,nbt={Trident:{tag:{display:{Name:'{"text":"Depths\' Curse 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"', '"Knight: Slot 3"' ] },AttributeModifiers:[]} 1 
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_3,nbt={Trident:{tag:{display:{Lore:['"Knight: Depths\' Curse"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] store success score @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] fine_hp.tmp0 run tag @s add depths_curse 
tag @e[tag=depths_curse] add thrown_trident
scoreboard players remove @a[tag=knight,scores={fine_hp.tmp0=1}] mana.mana 400
execute as @e[tag=knight,scores={fine_hp.tmp0=1}] at @s run scoreboard players operation @e[tag=depths_curse,sort=nearest,limit=1,tag=!processed] spell.8.power = @s spell.8.power
execute as @e[tag=replenish_3,scores={replenish_ok=0},tag=!depths_curse,nbt={Trident:{tag:{display:{Name:'{"text":"Depths\' Curse 1","italic":false}'}}}}] at @s run summon item ~ ~ ~ {Item:{id:trident,Count:1b,tag:{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"', '"Knight: Slot 3"' ] },AttributeModifiers:[]}}} 
execute as @e[tag=depths_curse,tag=!processed] run data modify entity @s SoundEvent set value "minecraft:entity.slime.attack"
execute as @e[tag=depths_curse,tag=!processed] run data modify entity @s damage set value 0  
# Mob Hook
execute as @e[tag=replenish_3,nbt={Trident:{tag:{display:{Name:'{"text":"Mob Hook 1","italic":false}'}}}}] at @s store success score @s replenish_ok run replaceitem entity @p[distance=0..4,nbt={SelectedItemSlot:2},tag=!replenish_fail,tag=knight] container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Mob Hook 1","italic":false}', Lore:[ '{"text":"Shoot a hook that pulls mobs towards you,","color":"white","italic":false}','{"text":"  and deals physical damage.","color":"white","italic":false}','{"text":"Cost: 350MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Mob Hook Spell"', '"Knight: Slot 3"' ] },AttributeModifiers:[]} 1 
scoreboard players set @a[tag=knight] fine_hp.tmp0 0
execute as @e[tag=replenish_3,nbt={Trident:{tag:{display:{Lore:['"Knight: Mob Hook Spell"']}}}},scores={replenish_ok=1}] run execute at @s run execute at @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=350..}] store success score @p[tag=knight,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=350..}] fine_hp.tmp0 run tag @s add mob_hook 
tag @e[tag=mob_hook] add thrown_trident 
scoreboard players remove @a[tag=knight,scores={fine_hp.tmp0=1}] mana.mana 350
execute as @e[tag=knight,scores={fine_hp.tmp0=1}] at @s run scoreboard players operation @e[tag=mob_hook,sort=nearest,limit=1,tag=!processed] spell.9.power = @s spell.9.power
execute as @e[tag=replenish_3,scores={replenish_ok=0},tag=!mob_hook,nbt={Trident:{tag:{display:{Name:'{"text":"Mob Hook 1","italic":false}'}}}}] at @s run summon item ~ ~ ~ {Item:{id:trident,Count:1b,tag:{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Mob Hook 1","italic":false}', Lore:[ '{"text":"Shoot a hook that pulls mobs towards you,","color":"white","italic":false}','{"text":"  and deals physical damage.","color":"white","italic":false}','{"text":"Cost: 350MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Mob Hook Spell"', '"Knight: Slot 3"' ] },AttributeModifiers:[]}}} 
execute as @e[tag=mob_hook,tag=!processed] run data modify entity @s SoundEvent set value "minecraft:block.tripwire.detach"
# TODO do power
execute as @e[tag=mob_hook,tag=!processed] run data modify entity @s damage set value 2.0
execute as @e[tag=mob_hook,tag=!processed] at @s store result score @s fine_hp.tmp0 run data get entity @s Motion[0] -100
execute as @e[tag=mob_hook,tag=!processed] at @s store result score @s fine_hp.tmp1 run data get entity @s Motion[2] -100  
kill @e[tag=replenish_3,scores={replenish_ok=1},tag=!thrown_trident]  
execute as @e[tag=thrown_trident] run data modify entity @s pickup set value 0b
kill @e[tag=replenish_3,tag=!thrown_trident]
scoreboard players set @e[tag=thrown_trident] replenish_ok 0 
tag @e[tag=thrown_trident,nbt={inGround:1b}] add hit_trident
tag @e[tag=thrown_trident,nbt={DealtDamage:1b}] add hit_trident
tag @e[tag=thrown_trident,nbt={DealtDamage:1b}] add hit_mob_trident  
# Depths curse check loop
execute at @e[tag=hit_trident,tag=depths_curse] run effect give @e[team=Enemies,distance=0..4] minecraft:slowness 10 0 true
execute as @e[tag=hit_trident,tag=depths_curse] at @s run scoreboard players operation @e[team=Enemies,distance=0..4] fine_hp.mdmg += @s spell.8.power
execute at @e[tag=hit_trident,tag=depths_curse] run particle minecraft:splash ~ ~0.25 ~ 1.5 0.25 1.5 0 200
execute at @e[tag=hit_trident,tag=depths_curse] run particle minecraft:bubble_pop ~ ~0.25 ~ 1.5 0.25 1.5 0 200  
# Mob hook check loop
scoreboard players add @e[tag=mob_hook] fine_hp.tmp2 1
execute at @e[tag=hit_mob_trident,tag=mob_hook] run tag @e[team=Enemies,distance=0..3] add hooked
effect give @e[tag=hooked] minecraft:slowness 2 9 true
effect give @e[tag=hooked] minecraft:jump_boost 2 200 true
execute at @e[tag=hooked] run particle block iron_block ~ ~1 ~ 0.25 0.5 0.25 0.1 100
execute as @e[tag=hit_mob_trident,tag=mob_hook] run scoreboard players operation @s fine_hp.tmp0 *= @s fine_hp.tmp2
execute as @e[tag=hit_mob_trident,tag=mob_hook] run scoreboard players operation @s fine_hp.tmp1 *= @s fine_hp.tmp2
execute as @e[tag=hooked] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @e[tag=hit_mob_trident,tag=mob_hook,sort=nearest,limit=1] fine_hp.tmp0
execute as @e[tag=hooked] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @e[tag=hit_mob_trident,tag=mob_hook,sort=nearest,limit=1] fine_hp.tmp1
execute as @e[tag=hooked] run data modify entity @s Motion[1] set value 0.5
tag @e[tag=hooked] remove hooked  
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
scoreboard players set @a[tag=knight] spell.10.power 20
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+1 Ground Pound Power"']}}}]}] spell.10.power 15
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+1 Ground Pound Power"']}}}]}] spell.10.power 15
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+1 Ground Pound Power"']}}}]}] spell.10.power 15 
scoreboard players set @a[tag=knight] spell.11.power 4
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+2 Shield uses"']}}}]}] spell.11.power 2
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+2 Shield uses"']}}}]}] spell.11.power 2
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+2 Shield uses"']}}}]}] spell.11.power 2 
scoreboard players set @a[tag=knight] spell.8.power 6
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:0b,tag:{display:{Lore:['"+6 Depths\' Curse Magic Damage"']}}}]}] spell.8.power 6
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:1b,tag:{display:{Lore:['"+6 Depths\' Curse Magic Damage"']}}}]}] spell.8.power 6
scoreboard players add @a[tag=knight,nbt={Inventory:[{Slot:2b,tag:{display:{Lore:['"+6 Depths\' Curse Magic Damage"']}}}]}] spell.8.power 6
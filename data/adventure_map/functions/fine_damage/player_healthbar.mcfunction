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
# ------------------------------------------
# Handle ingame damage sources
# Check if ingame hp is less than the max (20 + absorption)
execute as @s[scores={fine_hp.hpct=1}] run scoreboard players set @s fine_hp.tmp2 180
execute as @s[scores={fine_hp.hpct=1}] run scoreboard players operation @s fine_hp.tmp2 -= @s stat.health
# If the player isn't dead, adjust player's physical damage by (max - ingame_hp)
execute as @s[scores={fine_hp.hpct=1,fine_hp.die=0}] run scoreboard players operation @s fine_hp.dmg += @s fine_hp.tmp2 
# If the player is dead, set their hp to equal max hp and do some sketchy death reset stuff
execute as @s[scores={fine_hp.hpct=1,fine_hp.die=1,fine_hp.tmp2=1..}] run scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s[scores={fine_hp.hpct=1,fine_hp.die=1,fine_hp.tmp2=1..}] fine_hp.die 2
scoreboard players set @s[scores={fine_hp.die=2,fine_hp.tmp2=0}] fine_hp.die 0
# ------------------------------------------  
# Health item stuffs
replaceitem entity @s[scores={fine_hp.hp_frac=..0}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1
kill @a[scores={fine_hp.hp_frac=..0}] 
replaceitem entity @s[scores={fine_hp.hp_frac=1}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-19,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=2}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-18,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=3}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-17,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=4}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-16,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=5}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-15,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=6}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-14,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=7}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-13,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=8}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-12,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=9}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-11,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=10}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-10,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=11}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-9,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=12}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-8,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=13}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-7,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=14}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-6,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=15}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-5,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=16}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-4,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=17}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-3,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=18}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-2,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=19}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-1,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
replaceitem entity @s[scores={fine_hp.hp_frac=20..}] armor.head minecraft:golden_helmet{ Enchantments:[ {id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1} ], Unbreakable: 1, AttributeModifiers:[ {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"} ], display:{Name:'"HP indicator"',Lore:['"Helps modify your health."']} } 1 
# Remove and give absorption
effect clear @s[scores={fine_hp.hpct=1}] minecraft:absorption
effect give @s[scores={fine_hp.hpct=1}] minecraft:absorption 1 39 true
# Ping has_died to make sure its always initialized
scoreboard players add @s fine_hp.die 1
scoreboard players remove @s fine_hp.die 1
# Only check hp every two ticks, for some reason
scoreboard players add @s fine_hp.hpct 1
scoreboard players set @s[scores={fine_hp.hpct=2}] fine_hp.hpct 0
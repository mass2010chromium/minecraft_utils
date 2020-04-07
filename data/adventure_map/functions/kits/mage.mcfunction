clear @s
tag @s remove knight
tag @s remove archer
xp set @s 129 levels
xp set @s 0 points
scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.mh
scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s mana.mana 0
scoreboard players set @s mana.mana_regb 3
scoreboard players set @s fine_hp.mdmgrb 20
scoreboard players set @s fine_hp.dmgrb 0
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Robes"'}} 1
replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Greaves"'}} 1
replaceitem entity @s armor.feet minecraft:golden_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Boots"'}} 1
replaceitem entity @s container.0 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Basic Staff"',Lore:['"Mage: Staff"']}} 1
replaceitem entity @s container.1 minecraft:blaze_rod{Enchantments:[{}],display:{Name:'"Fireball 1"',Lore:['"Mage: Primary Spell"']}} 1
replaceitem entity @s container.2 minecraft:magma_cream{Enchantments:[{}],display:{Name:'"Lightning 1"',Lore:['"Mage: Secondary Spell"']}} 1
replaceitem entity @s container.3 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Fiery Staff"',Lore:['"Mage: Staff"', '"+1 Fireball Power"']}} 1
replaceitem entity @s container.8 minecraft:cookie{display:{Name:'"Biscuit"',Lore:['"Made of hardtack"']}} 10
tag @s add mage
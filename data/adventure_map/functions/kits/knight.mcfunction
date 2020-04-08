clear @s
tag @s remove mage
tag @s remove archer
xp set @s 129 levels
xp set @s 0 points
effect clear @s
scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.mh
scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s mana.mana 0
scoreboard players set @s mana.mana_regb 1
scoreboard players set @s fine_hp.mdmgrb 0
scoreboard players set @s fine_hp.dmgrb 20
replaceitem entity @s armor.head minecraft:iron_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:blast_protection,lvl:1}],display:{Name:'"Knight\'s Helmet"'}} 1
replaceitem entity @s armor.chest minecraft:chainmail_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:blast_protection,lvl:1}],display:{Name:'"Knight\'s Mail"'}} 1
replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:blast_protection,lvl:1}],display:{Name:'"Knight\'s Leggings"'}} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:blast_protection,lvl:1}],display:{Name:'"Knight\'s Sabatons"'}} 1
replaceitem entity @s container.0 minecraft:stone_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1}],display:{Name:'"Basic Sword"',Lore:['"Knight: Sword"']}} 1
replaceitem entity @s container.1 minecraft:trident{Enchantments:[{}],display:{Name:'"Spear 1"',Lore:['"Knight: Spear"']}} 1
replaceitem entity @s container.2 minecraft:anvil{Enchantments:[{}],display:{Name:'"Ground Pound 1"',Lore:['"Knight: Primary Spell"']}} 1
replaceitem entity @s container.8 minecraft:cookie{display:{Name:'"Biscuit"',Lore:['"Made of hardtack"']}} 10
tag @s add knight
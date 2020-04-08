clear @s
tag @s remove mage
tag @s remove knight
xp set @s 129 levels
xp set @s 0 points
effect clear @s
scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.mh
scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s mana.mana 0
scoreboard players set @s mana.mana_regb 5
scoreboard players set @s fine_hp.mdmgrb 0
scoreboard players set @s fine_hp.dmgrb 0
replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Cap"'}} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1},{}],display:{Name:'"Archer\'s Shirt"'}} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Pants"'}} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Boots"'}} 1
replaceitem entity @s container.0 minecraft:iron_axe{Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:'"Basic Axe"',Lore:['"Archer: Axe"']}} 1
replaceitem entity @s container.1 minecraft:bow{Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:power,lvl:5}],display:{Name:'"Basic Bow"',Lore:['"Archer: Bow"']}} 1
replaceitem entity @s container.2 minecraft:crossbow{Enchantments:[{}],display:{Name:'"Piercing Arrow 1"',Lore:['"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"']}} 1
replaceitem entity @s container.3 minecraft:arrow{Enchantments:[{id:sharpness,lvl:1}],display:{Name:'"Sharpened Arrow"',Lore:['"Archer: Arrow"']}} 1
replaceitem entity @s container.8 minecraft:cookie{display:{Name:'"Biscuit"',Lore:['"Made of hardtack"']}} 10
tag @s add archer
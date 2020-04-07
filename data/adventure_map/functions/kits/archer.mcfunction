clear @s 
tag @s remove mage
tag @s remove knight
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1},{}],display:{Name:'"Archer\'s Shirt"'}} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Pants"'}} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Boots"'}} 1
replaceitem entity @s container.0 minecraft:arrow{Enchantments:[{id:knockback,lvl:3},{id:sharpness,lvl:10}],display:{Name:'"Sharpened Arrow"',Lore:['"Archer: Melee"']}} 1
replaceitem entity @s container.1 minecraft:bow{Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:power,lvl:5}],display:{Name:'"Basic Bow"',Lore:['"Archer: Bow"']}} 1
replaceitem entity @s container.2 minecraft:spectral_arrow{Enchantments:[{}],display:{Name:'"Piercing Arrow 1"',Lore:['"Archer: Secondary Spell"']}} 1
#replaceitem entity @s container.3 minecraft:crossbow{Unbreakable:1,Enchantments:[{}],display:{Name:'"Explosive Bow"',Lore:['"Archer: Bow"', '"+1 Rocket Power"']}} 1
replaceitem entity @s container.8 minecraft:cookie{display:{Name:'"Biscuit"',Lore:['"Made of hardtack"']}} 10
tag @s add archer
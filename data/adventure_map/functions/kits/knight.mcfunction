clear @s 
tag @s remove mage
tag @s remove archer
replaceitem entity @s armor.chest minecraft:chainmail_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{}],display:{Name:'"Knight\'s Mail"'}} 1
replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{}],display:{Name:'"Knight\'s Leggings"'}} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{}],display:{Name:'"Knight\'s Sabatons"'}} 1
replaceitem entity @s container.0 minecraft:stone_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Basic Sword"',Lore:['"Knight: Sword"']}} 1
replaceitem entity @s container.1 minecraft:trident{Enchantments:[{}],display:{Name:'"Spear 1"',Lore:['"Knight: Primary Spell"']}} 1
replaceitem entity @s container.2 minecraft:shield{Enchantments:[{}],display:{Name:'"Shield 1"',Lore:['"Knight: Secondary Spell"']}} 1
replaceitem entity @s container.3 minecraft:stone_sword{Unbreakable:1,Enchantments:[{}],display:{Name:'"Weird Sword"',Lore:['"Knight: Sword"', '"+1 Ground Pound Power"']}} 1
tag @s add knight
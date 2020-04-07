<<<<<<< HEAD
give @s stick{Enchantments:[{id:stick,lvl:1}],Unbreakable:1,display:{Name:'{"text":"Kiddie Wand"}',Lore:['{"text":"A wand, but for kids."}']}} 1
give @s sunflower{Enchantments:[{id:sunflower,lvl:1}],display:{Name:'{"text":"Coin"}'}} 64
=======
clear @s
tag @s remove knight
tag @s remove archer
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Robes"'}} 1
replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Greaves"'}} 1
replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Boots"'}} 1
replaceitem entity @s container.0 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Basic Staff"',Lore:['"Mage: Staff"']}} 1
replaceitem entity @s container.1 minecraft:blaze_rod{Enchantments:[{}],display:{Name:'"Fireball 1"',Lore:['"Mage: Primary Spell"']}} 1
replaceitem entity @s container.2 minecraft:magma_cream{Enchantments:[{}],display:{Name:'"Lightning 1"',Lore:['"Mage: Secondary Spell"']}} 1
replaceitem entity @s container.3 minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:'"Fiery Staff"',Lore:['"Mage: Staff"', '"+1 Fireball Power"']}} 1
tag @s add mage
>>>>>>> 1071cba179370fa19cd3284ef30ba4ba0836d465

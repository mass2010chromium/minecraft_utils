clear @s
tag @s remove knight
tag @s remove archer
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Robes"'}} 1
replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Greaves"'}} 1
replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:fire_protection",lvl:1}],display:{Name:'"Mage\'s Boots"'}} 1
replaceitem entity @s container.0 ##mage_basic_staff_item##
replaceitem entity @s container.1 ##mage_fireball_1_item##
replaceitem entity @s container.2 ##mage_lightning_1_item##
replaceitem entity @s container.3 ##mage_fireball_staff_item##
tag @s add mage
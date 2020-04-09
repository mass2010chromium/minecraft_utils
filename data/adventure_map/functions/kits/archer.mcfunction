clear @s
tag @s remove mage
tag @s remove knight
xp set @s 129 levels
xp set @s 0 points
effect clear @s
scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.mh
scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s mana.mana 0
scoreboard players set @s mana.mana_regb 3
scoreboard players set @s fine_hp.mdmgrb 0
scoreboard players set @s fine_hp.dmgrb 0
replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Cap"'}} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1},{}],display:{Name:'"Archer\'s Shirt"'}} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Pants"'}} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:projectile_protection,lvl:1}],display:{Name:'"Archer\'s Boots"'}} 1
replaceitem entity @s container.0 minecraft:iron_axe{Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:'"Basic Axe"',Lore:['"Archer: Axe"']}} 1
replaceitem entity @s container.1 minecraft:bow{Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:power,lvl:8}],display:{Name:'"Basic Bow"',Lore:['"Archer: Bow"']}} 1
replaceitem entity @s container.2 minecraft:crossbow{Enchantments:[{}],display:{Name:'"Piercing Arrow 1"',Lore:['"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"']}} 1
replaceitem entity @s container.3 minecraft:dragon_breath{Enchantments:[{}],display:{Name:'"Healing Potion 1"',Lore:['"+10 HP"']}} 3
replaceitem entity @s container.4 minecraft:arrow{Enchantments:[{id:sharpness,lvl:1}],display:{Name:'"Sharpened Arrow"',Lore:['"Archer: Arrow"']}} 1
replaceitem entity @s container.7 written_book{pages:['{"text":"Day 1:\\nThere\'s word of a new illness from a far-away land. Mother says it\'s a punishment for the heathens, yet everyone around us is panicking. Weird."}','{"text":"Day 2:\\nApparently, someone in the near-by town of \\u0020Khors-Onah has the illness. They call it \\"plague\\". But we should be fine, for we have plenty of meats and potions of healing as well as our faith in Xisus Christ. "}','{"text":"Day 3:\\nDear heavens! The illness has taken mother! I must pray every hour for her healing. I believe that I shall be safe, as I am much younger than her."}','{"text":"Day 4:\\nEver since mother\'s been sick, nobody wants to talk to me anymore. Speaking of which, I haven\'t seen my friends in weeks. Jerry sent me a letter yesterady saying he was leaving to escape the plague and encouraging me to join him. But I must keep my mother safe.... "}','{"text":"Day 7:\\nWhat a prayer! I haven\'t had the time to even write an entry this Saturday and Sunday, for I was praying for 48 hours straight for mother. She seems to be recovering, but I think she worries too much about my health; I should be fine."}','{"text":"Day 12:\\nThe local priest has visited us. He says mother is one of the luckiest few of my town who survived the plague and that it is a miracle I have not died. Then I coughed. The poor fool jumped back five meters! He told me that just to please Xisus, I should wash my hands. How silly!"}','{"text":"Day 13:\\nI feel lethargic today. I shall write more to-morrow."}','{"text":"Day 14:\\nDear God. I think the priest was right; I have been sicker and sicker to-day. I spoke with him again this morning, and he said that I should head to the land of \\"Shoegone\\", find the holy sink, then wash my hands in it to please God. I shall depart to-morrow."}'],title:"My Diary",author:Donald,display:{Lore:["Donald's Diary"]}}
replaceitem entity @s container.8 minecraft:cookie{display:{Name:'"Biscuit"',Lore:['"Made of hardtack"']}} 10
tellraw @s "You have selected the archer class."
tag @s add archer
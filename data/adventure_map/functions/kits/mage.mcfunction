clear @s
tag @s remove knight
tag @s remove archer
xp set @s 129 levels
xp set @s 0 points
effect clear @s
scoreboard players operation @s fine_hp.prev_hp = @s fine_hp.mh
scoreboard players operation @s fine_hp.hp = @s fine_hp.mh
scoreboard players set @s mana.mana 0
scoreboard players set @s mana.mana_regb 6
scoreboard players set @s mana.mana_steal 0
scoreboard players set @s mana.mscd 0
scoreboard players set @s fine_hp.mdmgrb 20
scoreboard players set @s fine_hp.dmgrb 5
replaceitem entity @s armor.head minecraft:golden_helmet{Unbreakable:1,display:{Name:'{"text":"Mage\'s Thinking Cap","italic":false}'}, AttributeModifiers:[]} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Mage\'s Robes","italic":false}'}, AttributeModifiers:[]} 1
replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1,display:{Name:'{"text":"Mage\'s Greaves","italic":false}'}, AttributeModifiers:[]} 1
replaceitem entity @s armor.feet minecraft:golden_boots{Unbreakable:1,display:{Name:'{"text":"Mage\'s Boots","italic":false}'}, AttributeModifiers:[]} 1
replaceitem entity @s container.0 minecraft:golden_hoe{Unbreakable:1,HideFlags:4, Enchantments:[ {id:"minecraft:sharpness",lvl:3} ], display:{ Name:'{"italic":false,"text":"Basic Staff"}',Lore:['{"text":"Mage: Staff"}','{"text":"Mage: Slot 1"}'] }} 1
replaceitem entity @s container.1 minecraft:blaze_rod{Enchantments:[{}], display:{ Name:'{"italic":false,"text":"Fireball 1"}', Lore:[ '{"italic":false,"color":"white","text":"Shoot a fireball that explodes on contact or after 0.5s,"}','{"italic":false,"color":"white","text":"  dealing 3 physical damage and 8 magic damage."}','{"italic":false,"color":"white","text":"Damage decreases with distance from explosion center."}','{"italic":false,"color":"white","text":"A direct hit does even more damage."}','{"italic":false,"color":"white","text":"Can hurt self and allies!"}','{"italic":false,"color":"blue","text":"Cost: 200MP"}', '{"text":"Mage: Primary Spell"}', '{"text":"Mage: Fireball Spell"}', '{"text":"Mage: Slot 2"}' ] }} 1
replaceitem entity @s container.2 minecraft:nether_star{Enchantments:[{}],display:{Name:'{"italic":false,"text":"Arcane Explosion 1"}',Lore:['{"italic":false,"color":"white","text":"Push enemies away."}','{"italic":false,"color":"blue","text":"Cost: 400MP"}', '{"text":"Mage: Secondary Spell"}', '{"text":"Mage: Arcane Explosion Spell"}','{"text":"Mage: Slot 3"}']}} 1
replaceitem entity @s container.3 minecraft:dragon_breath{Enchantments:[{}],display:{Name:'{"italic":false,"text":"Healing Potion 1"}',Lore:['{"italic":false,"color":"red","text":"+10 HP"}']}} 3
replaceitem entity @s container.6 minecraft:written_book{pages:[ '["", {"text":"Mage: Stats\\n\\nMobility: \\u0020"},{"text":"\\u25a0 \\u25a0 \\u25a0 \\u25a1 \\u25a1","color":"red"}, {"text":"\\nDefense: ","color":"reset"},{"text":"\\u25a0 \\u25a0 \\u25a1 \\u25a1 \\u25a1","color":"red"}, {"text":"\\nRange: \\u0020 ","color":"reset"},{"text":"\\u25a0 \\u25a0 \\u25a0 \\u25a1 \\u25a1","color":"red"}, {"text":"\\nOffense: ","color":"reset"},{"text":"\\u25a0 \\u25a0 \\u25a0 \\u25a0 \\u25a1","color":"red"}, {"text":"\\nMage is a very strong all-rounder class with great magical capabilities, specializing in mid-range combat.","color":"reset"} ]', '{"text":"Mage: Hotbar Setup\\n\\n1: Melee weapon (staff)\\n2: Primary Spell\\n3: Secondary Spell\\n4-8: Customizable\\n9: Quest Book\\nOffhand: nothing"}', '{"text":"Mage: Tips \\n - Mage has extremely high mana regen. \\n - Fireballs hurt you and you can blow yourself up with them! \\n - Mage\'s melee attack is the weakest, but does splash magic damage, replenishes a bit of mana, and can be spammed. \\n - Mage is suited for mid-range combat. \\n - Drop spells to cast. "}' ],title:"Mage: How To",author:ferricles,display:{Lore:["A guide to the mage class."]}}
replaceitem entity @s container.7 minecraft:written_book{pages:['{"text":"Day 1:\\nThere\'s word of a new illness from a far-away land. Mother says it\'s a punishment for the heathens, yet everyone around us is panicking. Weird."}','{"text":"Day 2:\\nApparently, someone in the near-by town of Khors-Onah has the illness. They call it \\"plague\\". But we should be fine, for we have plenty of meats and potions of healing as well as our faith in Jesus Christ. "}','{"text":"Day 3:\\nDear heavens! The illness has taken mother! I must pray every hour for her healing. I believe that I shall be safe, as I am much younger than her."}','{"text":"Day 4:\\nEver since mother\'s been sick, nobody wants to talk to me anymore. Speaking of which, I haven\'t seen my friends in weeks. Jerry sent me a letter yesterady saying he was leaving to escape the plague and encouraging me to join him. But I must keep my mother safe.... "}','{"text":"Day 7:\\nWhat a prayer! I haven\'t had the time to even write an entry this Saturday and Sunday, for I was praying for 48 hours straight for mother. She seems to be recovering, but I think she worries too much about my health; I should be fine."}','{"text":"Day 12:\\nThe local priest has visited us. He says mother is one of the luckiest few of my town who survived the plague and that it is a miracle I have not died. Then I coughed. The poor fool jumped back five meters! He told me that just to please Xisus, I should wash my hands. How silly!"}','{"text":"Day 13:\\nI feel lethargic today. I shall write more to-morrow."}','{"text":"Day 14:\\nDear God. I think the priest was right; I have been sicker and sicker to-day. I spoke with him again this morning, and he said that I should head to the land of \\"Hopontis\\", find the holy sink, then wash my hands in it to please God. I shall depart to-morrow."}'],title:"My Diary",author:Don,display:{Lore:["Don's Diary"]}}
replaceitem entity @s container.8 minecraft:written_book{pages:['["",{"text":"Main Quest:","bold":true},{"text":" Wash your hands in the holy sink to ward off the plague!\\n \\u0020Status: ","color":"reset"},{"text":"Incomplete","bold":true,"color":"red"},{"text":"\\n","color":"reset"},{"text":"Current Objective:","bold":true},{"text":" \\u0020Complete the Tutorial.","color":"reset"}]'],title:"Quest Book",author:"",display:{Lore:["This is your quest book. Check this book often for objectives."]}}
tellraw @s "You have selected the mage class."
tag @s add mage
execute as @s run function adventure_map:fine_damage/add_player
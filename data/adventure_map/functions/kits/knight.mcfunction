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
scoreboard players set @s mana.mana_steal 20
scoreboard players set @s mana.mscd 0
scoreboard players set @s fine_hp.mdmgrb 0
scoreboard players set @s fine_hp.dmgrb 35
replaceitem entity @s armor.head minecraft:iron_helmet{Unbreakable:1, AttributeModifiers:[],display:{Name:'{"text":"Knight\'s Helmet","italic":false}'}} 1
replaceitem entity @s armor.chest minecraft:chainmail_chestplate{Unbreakable:1, AttributeModifiers:[],display:{Name:'{"text":"Knight\'s Mail","italic":false}'}} 1
replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1, AttributeModifiers:[],display:{Name:'{"text":"Knight\'s Leggings","italic":false}'}} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1, AttributeModifiers:[],display:{Name:'{"text":"Knight\'s Sabatons","italic":false}'}} 1
replaceitem entity @s container.0 minecraft:stone_sword{Unbreakable:1, Enchantments:[ {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1} ], display:{ Name:'{"text":"Basic Sword","italic":false}', Lore:[ '"Knight: Sword"' ] }} 1
replaceitem entity @s container.1 minecraft:anvil{Enchantments:[{}], display:{ Name:'{"text":"Ground Pound 1","italic":false}', Lore:[ '{"text":"Leap in the air and slam back down,","color":"white","italic":false}','{"text":"  launching nearby enemies airborne and","color":"white","italic":false}','{"text":"  dealing 20 physical damage.","color":"white","italic":false}','{"text":"Grants temporary invulnerability while leaping.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Knight: Active Spell"', '"Knight: Ground Pound Spell"' ] }} 1
replaceitem entity @s container.2 minecraft:trident{Unbreakable:1b, Enchantments:[{}], display:{ Name:'{"text":"Depths\' Curse 1","italic":false}', Lore:[ '{"text":"Spear deals physical damage to whatever it hits.","color":"white","italic":false}','{"text":"Deals 6 magic damage to enemies within 4 blocks","color":"white","italic":false}','{"text":"  and applies 10 seconds of slowness.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Knight: Spear"', '"Knight: Depths\' Curse"' ] },AttributeModifiers:[]} 1
replaceitem entity @s container.3 minecraft:dragon_breath{Enchantments:[{}],display:{Name:'{"text":"Healing Potion 1","italic":false}',Lore:['{"text":"+10 HP","color":"red","italic":false}']}} 3
replaceitem entity @s container.7 minecraft:written_book{pages:['{"text":"Day 1:\\nThere\'s word of a new illness from a far-away land. Mother says it\'s a punishment for the heathens, yet everyone around us is panicking. Weird."}','{"text":"Day 2:\\nApparently, someone in the near-by town of Khors-Onah has the illness. They call it \\"plague\\". But we should be fine, for we have plenty of meats and potions of healing as well as our faith in Jesus Christ. "}','{"text":"Day 3:\\nDear heavens! The illness has taken mother! I must pray every hour for her healing. I believe that I shall be safe, as I am much younger than her."}','{"text":"Day 4:\\nEver since mother\'s been sick, nobody wants to talk to me anymore. Speaking of which, I haven\'t seen my friends in weeks. Jerry sent me a letter yesterady saying he was leaving to escape the plague and encouraging me to join him. But I must keep my mother safe.... "}','{"text":"Day 7:\\nWhat a prayer! I haven\'t had the time to even write an entry this Saturday and Sunday, for I was praying for 48 hours straight for mother. She seems to be recovering, but I think she worries too much about my health; I should be fine."}','{"text":"Day 12:\\nThe local priest has visited us. He says mother is one of the luckiest few of my town who survived the plague and that it is a miracle I have not died. Then I coughed. The poor fool jumped back five meters! He told me that just to please Xisus, I should wash my hands. How silly!"}','{"text":"Day 13:\\nI feel lethargic today. I shall write more to-morrow."}','{"text":"Day 14:\\nDear God. I think the priest was right; I have been sicker and sicker to-day. I spoke with him again this morning, and he said that I should head to the land of \\"Hopontis\\", find the holy sink, then wash my hands in it to please God. I shall depart to-morrow."}'],title:"My Diary",author:Don,display:{Lore:["Don's Diary"]}}
replaceitem entity @p container.8 minecraft:written_book{pages:['["",{"text":"Main Quest:","bold":true},{"text":" Wash your hands in the holy sink to ward off the plague!\\n \\u0020Status: ","color":"reset"},{"text":"Incomplete","bold":true,"color":"red"},{"text":"\\n","color":"reset"},{"text":"Current Objective:","bold":true},{"text":" \\u0020Complete the Tutorial.","color":"reset"}]'],title:"Quest Book",author:"",display:{Lore:["This is your quest book. Check this book often for objectives."]}}
tellraw @s "You have selected the knight class."
tag @s add knight
execute as @s run function adventure_map:fine_damage/add_player
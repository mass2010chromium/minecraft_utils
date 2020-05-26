from utils import *

def add_common_items(subs, spell_id, get_uuid):
    
    subs["gold_coin_nbt"] = """display:{Name:'{"italic":false,"text":"Gold Coin"}'}"""
    
    subs["effect_heal_1"] = make_description_text(["+10 HP"],color="red")
    subs["effect_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_1_name"] = make_name("Healing Potion 1")
    subs["potion_heal_1_nbt"] = """Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:##potion_heal_1_name##,Lore:[##effect_heal_1##]}"""
    subs["potion_heal_1_item"] = """minecraft:dragon_breath{##potion_heal_1_nbt##}"""
    subs["potion_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    
    subs["effect_heal_2"] = make_description_text(["+15 HP"],color="red")
    subs["effect_heal_2_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_2_name"] = make_name("Healing Potion 2")
    subs["potion_heal_2_nbt"] = """Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:##potion_heal_2_name##,Lore:[##effect_heal_2##]}"""
    subs["potion_heal_2_item"] = """minecraft:dragon_breath{##potion_heal_2_nbt##}"""
    subs["potion_heal_2_tag"] = "spell.{}.tag".format(spell_id())
    
    subs["effect_heal_3"] = make_description_text(["+20 HP"],color="red")
    subs["effect_heal_3_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_3_name"] = make_name("Healing Potion 3")
    subs["potion_heal_3_nbt"] = """Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:##potion_heal_3_name##,Lore:[##effect_heal_3##]}"""
    subs["potion_heal_3_item"] = """minecraft:dragon_breath{##potion_heal_3_nbt##}"""
    subs["potion_heal_3_tag"] = "spell.{}.tag".format(spell_id())
    
    subs["boost_speed_15"] = """'{"text":"Walk Speed Boost: +15%"}'"""
    subs["health_boost_20"] = """'{"text":"Max Health Boost: +20"}'"""
    subs["health_boost_5"] = """'{"text":"Max Health Boost: +5"}'"""

    
def add_food_items(subs, spell_id, get_uuid):
    subs["food_biscuit_nbt"] = "display:{Name:"+make_name("Biscuit")+",Lore:["+make_name("Made of hardtack")+"]}"
    subs["food_biscuit_item"] = """minecraft:cookie{##food_biscuit_nbt##}"""
    subs["food_cookie_1_nbt"] = "display:{Name:"+make_name("Townsburg Special")+",Lore:["+make_name("Made of softtack")+"]}"
    subs["food_cookie_1_item"] = """minecraft:cookie{##food_cookie_1_nbt##}"""
    
    subs["food_melon_1_nbt"] = "display:{Name:"+make_name("Imported melon slice")+",Lore:["+make_name("Made of melon")+"]}"
    subs["food_melon_1_item"] = """minecraft:melon_slice{##food_melon_1_nbt##}"""
    
    subs["food_potato_1_nbt"] = "display:{Name:"+make_name("Imported potato")+",Lore:["+make_name("Potatoes are good for you!")+"]}"
    subs["food_potato_1_item"] = """minecraft:potato{##food_potato_1_nbt##}"""
 
    subs["food_porkchop_6_nbt"] = "display:{Name:"+make_name("Raw Pork")+",Lore:["+make_name("A nice portion of red meat.")+"]}"
    subs["food_porkchop_6_item"] = """minecraft:porkchop{##food_potato_1_nbt##}"""

    subs["food_beet_6_nbt"] = "display:{Name:"+make_name("Beet")+",Lore:["+make_name("Nice and red.")+"]}"
    subs["food_beet_6_item"] = """minecraft:beetroot{##food_beet_6_nbt##}"""

    subs["food_carrot_6_nbt"] = "display:{Name:"+make_name("Fresh Carrot")+",Lore:["+make_name("Looks like an orange stick.")+"]}"
    subs["food_carrot_6_item"] = """minecraft:carrot{##food_carrot_6_nbt##}"""

    subs["food_potato_6_nbt"] = "display:{Name:"+make_name("Hot Potato")+",Lore:["+make_name("Don\\'t hold it for too long.")+"]}"
    subs["food_potato_6_item"] = """minecraft:baked_potato{##food_potato_6_nbt##}"""
  
def add_armor_items(subs, spell_id, get_uuid):
    subs["speedy_sabatons_name"] = make_name("Speedy Sabatons")
    subs["speedy_sabatons_lore"] = make_description_text(["The wind flows through these boots, ", "causing your stride to flow like the wind."],color = "white")
    subs["speedy_sabatons_item"] = """minecraft:leather_boots{##speedy_sabatons_nbt##}"""
    subs["speedy_sabatons_tag"] = "spell.{}.tag".format(spell_id())
    subs["speedy_sabatons_nbt"] =    """Unbreakable:1,
                                        display:{
                                            Name:##speedy_sabatons_name##, 
                                            Lore:[
                                                ##speedy_sabatons_lore##,
                                                ##boost_speed_15##
                                            ]
                                        }, 
                                        AttributeModifiers:[
                                            {
                                                AttributeName:"generic.movementSpeed",
                                                Name:"generic.movementSpeed",Amount:0.15,Operation:1,"""+get_uuid()+""",Slot:"feet"
                                            }
                                        ]"""
    
    subs["strong_mail_name"] = make_name("Strong Mail")
    subs["strong_mail_lore"] = make_description_text(["Good at protecting you."],color = "white")
    subs["strong_mail_item"] = """minecraft:chainmail_chestplate{##strong_mail_nbt##}"""
    subs["strong_mail_tag"] = "spell.{}.tag".format(spell_id())
    subs["strong_mail_nbt"] =    """Unbreakable:1,
                                    display:{
                                        Name:##strong_mail_name##,
                                        Lore:[
                                            ##strong_mail_lore##,
                                            ##health_boost_20##
                                        ]
                                    },
                                    AttributeModifiers:[]"""

    subs["ventilating_cap_name"] = make_name("Ventilating Cap")
    subs["ventilating_cap_lore"] = make_description_text(["Allows the desert breeze to cool your noggin."],color = "white")
    subs["ventilating_cap_item"] = """minecraft:chainmail_helmet{##ventilating_cap_nbt##}"""
    subs["ventilating_cap"] = "spell.{}.tag".format(spell_id())
    subs["ventilating_cap_nbt"] =    """Unbreakable:1,
                                    display:{
                                        Name:##ventilating_cap_name##,
                                        Lore:[
                                            ##ventilating_cap_lore##,
                                            ##health_boost_5##
                                        ]
                                    },
                                    AttributeModifiers:[]"""

    subs["fair_tunic_name"] = make_name("Fair Tunic")
    subs["fair_tunic_lore"] = make_description_text(["This tunic looks aesthetically pleasing."],color = "white")
    subs["fair_tunic_item"] = """minecraft:leather_chestplate##fair_tunic_nbt##}"""
    subs["fair_tunic_tag"] = "spell.{}.tag".format(spell_id())
    subs["fair_tunic_nbt"] =    """Unbreakable:1,
                                    display:{
                                        Name:##fair_tunic_name##,
                                        Lore:[
                                            ##fair_tunic_lore##,
                                            ##health_boost_5##
                                        ],
                                        color:15650592
                                    },
                                    AttributeModifiers:[]"""

    subs["iron_plated_trousers_name"] = make_name("Iron Plated Trousers")
    subs["iron_plated_trousers_lore"] = make_description_text(["This looks more like army gear than clothing."],color = "white")
    subs["iron_plated_trousers_item"] = """minecraft:iron_leggings{##iron_plated_trousers_nbt##}"""
    subs["iron_plated_trousers_tag"] = "spell.{}.tag".format(spell_id())
    subs["iron_plated_trousers_nbt"] =    """Unbreakable:1,
                                    display:{
                                        Name:##iron_plated_trousers_name##,
                                        Lore:[
                                            ##iron_plated_trousers_lore##,
                                            ##health_boost_5##
                                        ]
                                    },
                                    AttributeModifiers:[]"""

    subs["tin_toed_tiptoes_name"] = make_name("Tin Toed Tiptoes")
    subs["tin_toed_tiptoes_lore"] = make_description_text(["These are some hefty boots."],color = "white")
    subs["tin_toed_tiptoes_item"] = """minecraft:iron_boots{##tin_toed_tiptoes_nbt##}"""
    subs["tin_toed_tiptoes_tag"] = "spell.{}.tag".format(spell_id())
    subs["tin_toed_tiptoes_nbt"] =    """Unbreakable:1,
                                    display:{
                                        Name:##tin_toed_tiptoes_name##,
                                        Lore:[
                                            ##tin_toed_tiptoes_lore##,
                                            ##health_boost_5##
                                        ]
                                    },
                                    AttributeModifiers:[]"""

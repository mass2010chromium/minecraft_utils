from utils import *

def add_archer_items(subs, spell_id, get_uuid):
    subs["archer_melee"] = """'{"text":"Archer: Melee"}'"""
    subs["archer_bow"] = """'{"text":"Archer: Bow"}'"""
    subs["archer_spell"] = """'{"text":"Archer: Active Spell"}'"""
    subs["archer_1"] = """'{"text":"Archer: Slot 1"}'"""
    subs["archer_2"] = """'{"text":"Archer: Slot 2"}'"""
    subs["archer_3"] = """'{"text":"Archer: Slot 3"}'"""
    
    
    subs["archer_normal_arrows"] = """'{"text":"Archer: Normal Arrows"}'"""
    subs["archer_pierce1_arrows"] = """'{"text":"Archer: Piercing Arrows 1"}'"""
    
    #T0 Axe
    subs["archer_basic_axe_name"] = make_name("Basic Axe")
    subs["archer_basic_axe_nbt"] = """Unbreakable:1,Enchantments:[{id:"minecraft:knockback",lvl:3s}],display:{Name:##archer_basic_axe_name##,Lore:[##archer_melee##,##archer_1##]}"""
    subs["archer_basic_axe_item"] = """minecraft:iron_axe{##archer_basic_axe_nbt##} 1"""
    #T2 Axe
    subs["archer_small_dagger_name"] = make_name("Small Dagger")
    subs["archer_small_dagger_nbt"] = ("""Enchantments:[{id:"minecraft:sharpness",lvl:10s}],
                                          display:{
                                            Name:##archer_small_dagger_name##,
                                            Lore:[
                                              ##archer_melee##,
                                              ##archer_1##,"""
                                              + make_speed_damage_text(4, 7) +
                                              """
                                            ]
                                          }""")
    subs["archer_small_dagger_item"] = """minecraft:flint{##archer_small_dagger_nbt##} 1"""
    
    #T0 Bow
    subs["archer_basic_bow_name"] = make_name("Basic Bow")
    subs["archer_basic_bow_nbt"] = """Unbreakable:1,HideFlags:4,
                                      Enchantments:[
                                        {id:"minecraft:infinity",lvl:1s},
                                        {id:"minecraft:power",lvl:3}
                                      ],
                                      display:{Name:##archer_basic_bow_name##,
                                        Lore:[
                                          ##archer_bow##,
                                          ##archer_normal_arrows##,
                                          ##archer_2##
                                        ]
                                      }"""
    subs["archer_basic_bow_item"] = """minecraft:bow{##archer_basic_bow_nbt##} 1"""
    #T1 Bow
    subs["archer_longbow_bow_extra"] = make_description_text(["It\\'s a longer bow!"])
    subs["archer_longbow_bow_name"] = make_name("Longbow")
    subs["archer_longbow_bow_nbt"] = """Unbreakable:1,HideFlags:4,
                                        Enchantments:[
                                          {id:"minecraft:infinity",lvl:1s},{id:"minecraft:power",lvl:5s}
                                        ],
                                        display:{
                                          Name:##archer_longbow_bow_name##,
                                          Lore:[
                                            ##archer_longbow_bow_extra##,
                                            ##archer_bow##,
                                            ##archer_normal_arrows##,
                                            ##archer_2##
                                          ]
                                        }"""
    subs["archer_longbow_bow_item"] = """minecraft:bow{##archer_longbow_bow_nbt##} 1"""
    #T2 Bow
    subs["archer_cactus_fiber_bow_name"] = make_name("Cactus Fiber")
    subs["archer_cactus_fiber_bow_nbt"] = """Unbreakable:1,HideFlags:4,
                                             Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:power",lvl:5s}],
                                             display:{
                                               Name:##archer_cactus_fiber_bow_name##,
                                               Lore:[
                                                 ##archer_bow##,
                                                 ##archer_pierce1_arrows##,
                                                 ##archer_2##
                                               ]
                                             }"""
    subs["archer_cactus_fiber_bow_item"] = """minecraft:bow{##archer_cactus_fiber_bow_nbt##} 1"""

    subs["archer_windwalk_spell"] = """'{"text":"Archer: Windwalk Spell"}'""";
    subs["archer_windwalk_extra"] = make_description_text([ 
                                                            "Fire an arrow, dealing 5 magic damage",
                                                            "  and knocking opponents airborne.",
                                                            "Grants speed II to caster for 5s.",
                                                            "Grants speed I to caster and allies for 20s."
                                                            ]) + "," + make_cost("Cost: 400MP")
    subs["archer_windwalk_power"] = "spell.{}.power".format(spell_id())
    subs["archer_windwalk_1_name"] = make_name("Windwalk 1")
    subs["archer_windwalk_1_nbt"] =  """display:{
                                          Name:##archer_windwalk_1_name##,
                                          Lore:[
                                            ##archer_windwalk_extra##,
                                            ##archer_spell##,
                                            ##archer_windwalk_spell##,
                                            ##archer_3##
                                          ]
                                        },
                                        Charged:1b"""
    subs["archer_windwalk_1_item"] = """minecraft:crossbow{##archer_windwalk_1_nbt##} 1"""

    subs["archer_piercingArrow_spell"] = """'{"text":"Archer: Piercing Arrow Spell"}'""";
    subs["archer_piercingArrow_extra"] = make_description_text([
                                                                "Fire an arrow that pierces 7 enemies,",
                                                                "  dealing 10 magic damage and 7-10 physical damage."
                                                                ]) + "," + make_cost("Cost: 600MP")
    subs["archer_piercingArrow_power"] = "spell.{}.power".format(spell_id())
    subs["archer_piercingArrow_1_name"] = make_name("Piercing Arrow 1")
    subs["archer_piercingArrow_1_nbt"] = """display:{
                                              Name:##archer_piercingArrow_1_name##,
                                              Lore:[
                                                ##archer_piercingArrow_extra##,
                                                ##archer_spell##,
                                                ##archer_piercingArrow_spell##,
                                                ##archer_3##
                                              ]
                                            },
                                            Charged:1b"""
    subs["archer_piercingArrow_1_item"] = """minecraft:crossbow{##archer_piercingArrow_1_nbt##} 1"""
    
from utils import *

def add_knight_items(subs, spell_id, get_uuid):
    subs["knight_melee"] = '\'"Knight: Sword"\''
    subs["knight_spear"] = '\'"Knight: Spear"\''
    subs["knight_spell"] = '\'"Knight: Active Spell"\''

    #Knight Basic(T0) Sword
    subs["knight_basic_sword_name"] = make_name("Basic Sword")
    subs["knight_basic_sword_nbt"] = """Unbreakable:1,
                                        Enchantments:[
                                          {id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1}
                                        ],
                                        display:{
                                          Name:##knight_basic_sword_name##,
                                          Lore:[
                                            ##knight_melee##
                                          ]
                                        }"""
    subs["knight_basic_sword_item"] = """minecraft:stone_sword{##knight_basic_sword_nbt##} 1"""
    
    #Knight T1 Sword
    subs["knight_castironsword_sword_name"] = make_name("Cast-Iron Sword")
    subs["knight_castironsword_sword_nbt"] = """Unbreakable:1,
                                                Enchantments:[
                                                  {id:"minecraft:sharpness",lvl:6},{id:"minecraft:sweeping",lvl:1}
                                                ],
                                                display:{
                                                  Name:##knight_castironsword_sword_name##,
                                                  Lore:[
                                                    ##knight_melee##
                                                  ]
                                                }"""
    subs["knight_castironsword_sword_item"] = """minecraft:iron_sword{##knight_castironsword_sword_nbt##} 1"""
    
    #Knight Spear 1
    subs["knight_depthsCurse_spell"] = '\'"Knight: Depths\\\' Curse"\''
    subs["knight_depthsCurse_extra"] = make_description_text([
                                                        "Spear deals physical damage to whatever it hits.",
                                                        "Deals 6 magic damage to enemies within 4 blocks",
                                                        "  and applies 10 seconds of slowness."
                                                        ]) + "," + make_cost("Cost: 400MP")
    subs["knight_depthsCurse_boost_1"] = '\'"+6 Depths\\\' Curse Magic Damage"\''
    subs["knight_depthsCurse_power"] = "spell.{}.power".format(spell_id())
    subs["knight_depthsCurse_1_name"] = make_name("Depths\\' Curse 1")
    subs["knight_depthsCurse_1_nbt"] = """Unbreakable:1b,
                                    Enchantments:[{}],
                                    display:{
                                      Name:##knight_depthsCurse_1_name##,
                                      Lore:[
                                        ##knight_depthsCurse_extra##,
                                        ##knight_spear##,
                                        ##knight_depthsCurse_spell##
                                      ]
                                    },AttributeModifiers:[]"""
    subs["knight_depthsCurse_1_item"] = """minecraft:trident{##knight_depthsCurse_1_nbt##} 1"""
    
    #Knight Mob Hook 1
    subs["knight_mobHook_spell"] = '\'"Knight: Mob Hook Spell"\'';
    subs["knight_mobHook_extra"] = make_description_text([
                                                          "Shoot a hook that pulls mobs towards you,",
                                                          "  and deals physical damage.",
                                                          ]) + "," + make_cost("Cost: 350MP")
    subs["knight_mobHook_power"] = "spell.{}.power".format(spell_id())
    subs["knight_mobHook_1_name"] = make_name("Mob Hook 1")
    subs["knight_mobHook_1_nbt"] = """Unbreakable:1b,
                                    Enchantments:[{}],
                                    display:{
                                              Name:##knight_mobHook_1_name##,
                                              Lore:[
                                                ##knight_mobHook_extra##,
                                                ##knight_spear##,
                                                ##knight_mobHook_spell##
                                              ]
                                            },AttributeModifiers:[]"""
    subs["knight_mobHook_1_item"] = """minecraft:trident{##knight_mobHook_1_nbt##} 1"""
    
    #Knight Ground Pound 1
    subs["knight_groundPound_spell"] = '\'"Knight: Ground Pound Spell"\''
    subs["knight_groundPound_extra"] = make_description_text([
                                                                "Leap in the air and slam back down,",
                                                                "  launching nearby enemies airborne and",
                                                                "  dealing 20 physical damage.",
                                                                "Grants temporary invulnerability while leaping."
                                                                ]) + "," + make_cost("Cost: 600MP")
    knight_groundPound_spellID = spell_id()
    subs["knight_groundPound_boost_1"] = '\'"+1 Ground Pound Power"\''
    subs["knight_groundPound_power"] = "spell.{}.power".format(knight_groundPound_spellID)
    subs["knight_groundPound_riseTime"] = "spell.{}.time".format(knight_groundPound_spellID)
    subs["knight_groundPound_1_name"] = make_name("Ground Pound 1")
    subs["knight_groundPound_1_nbt"] =   """Enchantments:[{}],
                                            display:{
                                              Name:##knight_groundPound_1_name##,
                                              Lore:[
                                                ##knight_groundPound_extra##,
                                                ##knight_spell##,
                                                ##knight_groundPound_spell##
                                              ]
                                            }"""
    subs["knight_groundPound_1_item"] = """minecraft:anvil{##knight_groundPound_1_nbt##} 1"""

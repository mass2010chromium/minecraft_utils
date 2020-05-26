from utils import *

def add_knight_items(subs, spell_id, get_uuid):
    subs["knight_melee"] = """'{"text":"Knight: Sword"}'"""
    subs["knight_spear"] = """'{"text":"Knight: Spear"}'"""
    subs["knight_spell"] = """'{"text":"Knight: Active Spell"}'"""
    subs["knight_1"] = """'{"text":"Knight: Slot 1"}'"""
    subs["knight_2"] = """'{"text":"Knight: Slot 2"}'"""
    subs["knight_3"] = """'{"text":"Knight: Slot 3"}'"""
    
    #Knight Basic(T0) Sword
    subs["knight_basic_sword_name"] = make_name("Basic Sword")
    subs["knight_basic_sword_nbt"] = """Unbreakable:1,HideFlags:4,
                                        Enchantments:[
                                          {id:"minecraft:sharpness",lvl:5s},{id:"minecraft:sweeping",lvl:1s}
                                        ],
                                        display:{
                                          Name:##knight_basic_sword_name##,
                                          Lore:[
                                            ##knight_melee##,
                                            ##knight_1##
                                          ]
                                        }"""
    subs["knight_basic_sword_item"] = """minecraft:stone_sword{##knight_basic_sword_nbt##} 1"""
    
    #Knight T1 Sword
    subs["knight_castironsword_sword_name"] = make_name("Cast-Iron Sword")
    subs["knight_castironsword_sword_nbt"] = """Unbreakable:1,HideFlags:4,
                                                Enchantments:[
                                                  {id:"minecraft:sharpness",lvl:5s},{id:"minecraft:sweeping",lvl:1s}
                                                ],
                                                display:{
                                                  Name:##knight_castironsword_sword_name##,
                                                  Lore:[
                                                    ##knight_melee##,
                                                    ##knight_1##
                                                  ]
                                                }"""
    subs["knight_castironsword_sword_item"] = """minecraft:iron_sword{##knight_castironsword_sword_nbt##} 1"""
    
    #Knight T2 Sword
    subs["knight_sandesitesword_sword_name"] = make_name("Sandesite Sword")
    subs["knight_sandesitesword_sword_nbt"] = """Unbreakable:1,HideFlags:4,
                                                Enchantments:[
                                                  {id:"minecraft:sharpness",lvl:10s},{id:"minecraft:sweeping",lvl:2s}
                                                ],
                                                display:{
                                                  Name:##knight_sandesitesword_sword_name##,
                                                  Lore:[
                                                    ##knight_melee##,
                                                    ##knight_1##
                                                  ]
                                                }"""
    subs["knight_sandesitesword_sword_item"] = """minecraft:golden_sword{##knight_sandesitesword_sword_nbt##} 1"""
    
    
    #Knight Spear 1
    subs["knight_depthsCurse_spell"] = """'{"text":"Knight: Depths\\' Curse"}'"""
    subs["knight_depthsCurse_extra"] = make_description_text([
                                                        "Spear deals physical damage to whatever it hits.",
                                                        "Deals 6 magic damage to enemies within 4 blocks",
                                                        "  and applies 10 seconds of slowness."
                                                        ]) + "," + make_cost("Cost: 400MP")
    subs["knight_depthsCurse_boost_1"] = """'{"text":"+6 Depths\\' Curse Magic Damage"}'"""
    subs["knight_depthsCurse_power"] = "spell.{}.power".format(spell_id())
    subs["knight_depthsCurse_1_name"] = make_name("Depths\\' Curse 1")
    subs["knight_depthsCurse_1_nbt"] = """Unbreakable:1b,
                                    Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:5,
                                    display:{
                                      Name:##knight_depthsCurse_1_name##,
                                      Lore:[
                                        ##knight_depthsCurse_extra##,
                                        ##knight_spear##,
                                        ##knight_depthsCurse_spell##,
                                        ##knight_3##
                                      ]
                                    },AttributeModifiers:[]"""
    subs["knight_depthsCurse_1_item"] = """minecraft:trident{##knight_depthsCurse_1_nbt##} 1"""
    
    #Knight Mob Hook 1
    subs["knight_mobHook_spell"] = """'{"text":"Knight: Mob Hook Spell"}'""";
    subs["knight_mobHook_extra"] = make_description_text([
                                                          "Shoot a hook that pulls mobs towards you,",
                                                          "  and deals physical damage.",
                                                          ]) + "," + make_cost("Cost: 350MP")
    subs["knight_mobHook_power"] = "spell.{}.power".format(spell_id())
    subs["knight_mobHook_1_name"] = make_name("Mob Hook 1")
    subs["knight_mobHook_1_nbt"] = """Unbreakable:1b,
                                    Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:5,
                                    display:{
                                              Name:##knight_mobHook_1_name##,
                                              Lore:[
                                                ##knight_mobHook_extra##,
                                                ##knight_spear##,
                                                ##knight_mobHook_spell##,
                                                ##knight_3##
                                              ]
                                            },AttributeModifiers:[]"""
    subs["knight_mobHook_1_item"] = """minecraft:trident{##knight_mobHook_1_nbt##} 1"""
    
    #Knight Ground Pound 1
    subs["knight_groundPound_spell"] = """'{"text":"Knight: Ground Pound Spell"}'"""
    subs["knight_groundPound_extra"] = make_description_text([
                                                                "Leap in the air and slam back down,",
                                                                "  launching nearby enemies airborne and",
                                                                "  dealing 20 physical damage.",
                                                                "Grants temporary invulnerability while leaping."
                                                                ]) + "," + make_cost("Cost: 600MP")
    knight_groundPound_spellID = spell_id()
    subs["knight_groundPound_boost_1"] = """'{"text":"+1 Ground Pound Power"}'"""
    subs["knight_groundPound_power"] = "spell.{}.power".format(knight_groundPound_spellID)
    subs["knight_groundPound_riseTime"] = "spell.{}.time".format(knight_groundPound_spellID)
    subs["knight_groundPound_1_name"] = make_name("Ground Pound 1")
    subs["knight_groundPound_1_nbt"] =   """Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:5,
                                            display:{
                                              Name:##knight_groundPound_1_name##,
                                              Lore:[
                                                ##knight_groundPound_extra##,
                                                ##knight_spell##,
                                                ##knight_groundPound_spell##,
                                                ##knight_2##
                                              ]
                                            }"""
    subs["knight_groundPound_1_item"] = """minecraft:anvil{##knight_groundPound_1_nbt##} 1"""
    
    #Knight Shield 1
    subs["knight_shield_spell"] = """'{"text":"Knight: Shield Spell"}'"""
    subs["knight_shield_extra"] = make_description_text([
                                                        "Grants a shield that blocks 4 melee hits, lasting 20s.",
                                                        "Slows nearby enemies when the shield is used.",
                                                        "Can\\'t block ranged projectiles or area attacks."
                                                        ]) + "," + make_cost("Cost: 300MP")
    knight_shield_spellID = spell_id()
    subs["knight_shield_boost_1"] = """'{"text":"+2 Shield uses"}'"""
    subs["knight_shield_power"] = "spell.{}.power".format(knight_shield_spellID)
    subs["knight_shield_uses"] = "spell.{}.uses".format(knight_shield_spellID)
    subs["knight_shield_used"] = "shield_used"
    subs["knight_shield_time"] = "spell.{}.time".format(knight_shield_spellID)
    subs["knight_shield_1_name"] = make_name("Shield 1")
    subs["knight_shield_1_nbt"] =    """Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:5,
                                              display:{
                                              Name:##knight_shield_1_name##,
                                              Lore:[
                                                ##knight_shield_extra##,
                                                ##knight_spell##,
                                                ##knight_shield_spell##,
                                                ##knight_2##
                                              ]
                                            }"""
    subs["knight_shield_1_item"] = """minecraft:iron_door{##knight_shield_1_nbt##} 1"""
    

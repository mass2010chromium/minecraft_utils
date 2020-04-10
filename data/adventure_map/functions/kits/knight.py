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
    subs["knight_spear"] = '\'"Knight: Spear"\''
        # subs["knight_spear_boost_1"] = '\'"+1 Spear Damage"\''
    subs["knight_spear_power"] = "spell.{}.power".format(spell_id())
    subs["knight_spear_1_name"] = make_name("Spear 1")
    subs["knight_spear_1_nbt"] = """Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2}],display:{Name:##knight_spear_1_name##,Lore:[##knight_spear##]},AttributeModifiers:[]"""
    subs["knight_spear_1_item"] = """minecraft:trident{##knight_spear_1_nbt##} 1"""
    
    #Knight Mob Hook 1
    subs["knight_mobHook_spell"] = '\'"Knight: Mob Hook Spell"\'';
    subs["knight_mobHook_extra"] = make_description_text([
                                                          "Shoot a hook that pulls mobs towards you,",
                                                          "  dealing 8 magic damage and 7-10 physical damage.",
                                                          ]) + "," + make_cost("Cost: 350MP")
    subs["knight_mobHook_1_power"] = "spell.{}.power".format(spell_id())
    subs["knight_mobHook_1_name"] = make_name("Mob Hook 1")
    subs["knight_mobHook_1_nbt"] = """display:{
                                              Name:##knight_mobHook_1_name##,
                                              Lore:[
                                                ##knight_mobHook_extra##,
                                                ##knight_spell##,
                                                ##knight_mobHook_spell##
                                              ]
                                            }"""
    subs["knight_mobHook_1_item"] = """minecraft:tripwire_hook{##knight_mobHook_1_nbt##} 1"""
    
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
    subs["knight_groundPound_1_nbt"] = """Enchantments:[{}],display:{Name:##knight_groundPound_1_name##,Lore:[##knight_groundPound_extra##, ##knight_spell##, ##knight_groundPound_spell##]}"""
    subs["knight_groundPound_1_item"] = """minecraft:anvil{##knight_groundPound_1_nbt##} 1"""

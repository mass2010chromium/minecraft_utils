from utils import *

def add_archer_items(subs, spell_id, get_uuid):
    subs["archer_melee"] = '\'"Archer: Axe"\''
    subs["archer_bow"] = '\'"Archer: Bow"\''
    subs["archer_spell"] = '\'"Archer: Active Spell"\''

    subs["archer_basic_axe_name"] = make_name("Basic Axe")
    subs["archer_basic_axe_nbt"] = """Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:##archer_basic_axe_name##,Lore:['"Archer: Axe"']}"""
    subs["archer_basic_axe_item"] = """minecraft:iron_axe{##archer_basic_axe_nbt##} 1"""

    subs["archer_basic_bow_name"] = make_name("Basic Bow")
    subs["archer_basic_bow_nbt"] = """Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:power,lvl:3}],display:{Name:##archer_basic_bow_name##,Lore:[##archer_bow##]}"""
    subs["archer_basic_bow_item"] = """minecraft:bow{##archer_basic_bow_nbt##} 1"""

    subs["archer_longbow_bow_name"] = make_name("Longbow")
    subs["archer_longbow_bow_nbt"] = """Unbreakable:1,
                                        Enchantments:[
                                          {id:infinity,lvl:1},{id:power,lvl:5}
                                        ],
                                        display:{
                                          Name:##archer_longbow_bow_name##,
                                          Lore:[
                                            '"It\\'s a longer bow!"',
                                            ##archer_bow##
                                          ]
                                        }"""
    subs["archer_longbow_bow_item"] = """minecraft:bow{##archer_longbow_bow_nbt##} 1"""

    subs["archer_windwalk_spell"] = '\'"Archer: Windwalk Spell"\'';
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
                                            ##archer_windwalk_spell##
                                          ]
                                        },
                                        Charged:1b"""
    subs["archer_windwalk_1_item"] = """minecraft:crossbow{##archer_windwalk_1_nbt##} 1"""

    subs["archer_piercingArrow_spell"] = '\'"Archer: Piercing Arrow Spell"\'';
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
                                                ##archer_piercingArrow_spell##
                                              ]
                                            },
                                            Charged:1b"""
    subs["archer_piercingArrow_1_item"] = """minecraft:crossbow{##archer_piercingArrow_1_nbt##} 1"""

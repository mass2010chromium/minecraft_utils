from utils import *

def add_mage_items(subs, spell_id, get_uuid):
    subs["mage_melee"] = """'{"text":"Mage: Staff"}'"""
    subs["mage_primary"] = """'{"text":"Mage: Primary Spell"}'"""
    subs["mage_secondary"] = """'{"text":"Mage: Secondary Spell"}'"""
    subs["mage_1"] = """'{"text":"Mage: Slot 1"}'"""
    subs["mage_2"] = """'{"text":"Mage: Slot 2"}'"""
    subs["mage_3"] = """'{"text":"Mage: Slot 3"}'"""

    subs["mage_attack_splash_power"] = "spell.{}.power".format(spell_id())
    subs["mage_splash_power_boost_2"] = """'{"text":"+2 Melee Splash Damage"}'"""

    subs["mage_basic_staff_name"] = make_name("Basic Staff")
    subs["mage_basic_staff_nbt"] = """Unbreakable:1,HideFlags:4,
                                      Enchantments:[
                                        {id:"minecraft:sharpness",lvl:3s}
                                      ],
                                      display:{
                                        Name:##mage_basic_staff_name##,Lore:[##mage_melee##,##mage_1##]
                                      }"""
    subs["mage_basic_staff_item"] =  """minecraft:golden_hoe{##mage_basic_staff_nbt##} 1"""
    
    subs["mage_bigger_staff_name"] = make_name("Embiggened Staff")
    subs["mage_bigger_staff_extra"] = make_description_text(["Is bigger. Apparently."])
    subs["mage_bigger_staff_nbt"] = """Unbreakable:1,HideFlags:4,
                                      Enchantments:[
                                        {id:"minecraft:sharpness",lvl:5s}
                                      ],
                                      display:{
                                        Name:##mage_bigger_staff_name##,
                                        Lore:[
                                          ##mage_bigger_staff_extra##,
                                          ##mage_melee##,
                                          ##mage_1##
                                        ]
                                      }"""
    subs["mage_bigger_staff_item"] =  """minecraft:golden_hoe{##mage_bigger_staff_nbt##} 1"""
    
    subs["mage_fireball_staff_name"] = make_name("Fiery Staff")
    subs["mage_fireball_staff_nbt"] =    """Unbreakable:1,HideFlags:5,
                                            Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                            display:{
                                              Name:##mage_fireball_staff_name##,
                                              Lore:[
                                                ##mage_melee##, 
                                                ##mage_fireball_boost_1##,
                                                ##mage_1##
                                              ]
                                            }
                                            """
    subs["mage_fireball_staff_item"] = """minecraft:golden_hoe{##mage_fireball_staff_nbt##} 1"""
    
    subs["mage_whirlwind_staff_name"] = make_name("Whirlwind Staff")
    subs["mage_whirlwind_staff_extra"] = make_description_text(["Attacks faster."])
    subs["mage_whirlwind_staff_nbt"] =  ("""Unbreakable:1,HideFlags:6,
                                            Enchantments:[{id:"minecraft:sharpness",lvl:1s}],
                                            display:{
                                              Name:##mage_whirlwind_staff_name##,
                                              Lore:[
                                                ##mage_whirlwind_staff_extra##,
                                                ##mage_melee##, 
                                                ##mage_zephyr_boost_1##, 
                                                ##mage_splash_power_boost_2##,
                                                ##mage_1##,"""
                                                + make_speed_damage_text(8, 2) +
                                                """
                                              ]
                                            },
                                            AttributeModifiers:[
                                              {AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:4,Operation:0,"""+get_uuid()+""",Slot:"mainhand"}
                                            ]""")
    subs["mage_whirlwind_staff_item"] = """minecraft:golden_hoe{##mage_whirlwind_staff_nbt##} 1"""

    subs["mage_fireball_spell"] = """'{"text":"Mage: Fireball Spell"}'"""
    subs["mage_fireball_extra"] = make_description_text([
                                                            "Shoot a fireball that explodes on contact or after 0.5s,",
                                                            "  dealing 3 physical damage and 8 magic damage.",
                                                            "Damage decreases with distance from explosion center.",
                                                            "A direct hit does even more damage.",
                                                            "Can hurt self and allies!"
                                                            ]) + "," + make_cost("Cost: 200MP")
    subs["mage_fireball_boost_1"] = """'{"text":"+8 Fireball Magic Damage"}'"""
    subs["mage_fireball_power"] = "spell.{}.power".format(spell_id())
    subs["mage_fireball_1_name"] = make_name("Fireball 1")
    subs["mage_fireball_1_nbt"] =    """HideFlags:1,
                                        Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                        display:{
                                          Name:##mage_fireball_1_name##,
                                          Lore:[
                                            ##mage_fireball_extra##,
                                            ##mage_primary##,
                                            ##mage_fireball_spell##,
                                            ##mage_2##
                                          ]
                                        }"""
    subs["mage_fireball_1_item"] = """minecraft:blaze_rod{##mage_fireball_1_nbt##} 1"""
    subs["mage_fireball_2_name"] = make_name("Fireball 2")
    subs["mage_fireball_2_nbt"] =    """HideFlags:1,
                                        Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                        display:{
                                          Name:##mage_fireball_2_name##,
                                          Lore:[
                                            ##mage_fireball_extra##,
                                            ##mage_primary##, 
                                            ##mage_fireball_spell##, 
                                            ##mage_fireball_boost_1##,
                                            ##mage_2##
                                          ]
                                        }"""
    subs["mage_fireball_2_item"] = """minecraft:blaze_rod{##mage_fireball_2_nbt##} 1"""
    
    subs["mage_windspear_spell"] = """'{"text":"Mage: Cyclone Spear Spell"}'""";
    subs["mage_windspear_extra"] = make_description_text([
                                                            "Shoot a straight projectile, dealing 25 damage.",
                                                            "Can be stopped by thick crowds.",
                                                            ]) + "," + make_cost("Cost: 500MP")
    subs["mage_windspear_boost_1"] = """'{"text":"+25 Cyclone Spear damage"}'"""
    subs["mage_windspear_power"] = "spell.{}.power".format(spell_id())
    subs["mage_windspear_1_name"] = make_name("Cyclone Spear 1")
    subs["mage_windspear_1_nbt"] =    """HideFlags:1,
                                        Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                        display:{
                                          Name:##mage_windspear_1_name##,
                                          Lore:[
                                            ##mage_windspear_extra##,
                                            ##mage_primary##,
                                            ##mage_windspear_spell##,
                                            ##mage_2##
                                          ]
                                        }"""
    subs["mage_windspear_1_item"] = """minecraft:feather{##mage_windspear_1_nbt##} 1"""

    subs["mage_repulse_spell"] = """'{"text":"Mage: Arcane Explosion Spell"}'""";
    subs["mage_repulse_extra"] = make_description_text(["Push enemies away."]) + "," + make_cost("Cost: 400MP")
    subs["mage_repulse_boost_1"] = """'{"text":"+1 Arcane Explosion Magic Damage"}'"""
    subs["mage_repulse_power"] = "spell.{}.power".format(spell_id())
    subs["mage_repulse_1_name"] = make_name("Arcane Explosion 1")
    subs["mage_repulse_1_nbt"] = """HideFlags:1,
                                    Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                    display:{
                                      Name:##mage_repulse_1_name##,
                                      Lore:[
                                        ##mage_repulse_extra##,
                                        ##mage_secondary##,
                                        ##mage_repulse_spell##,
                                        ##mage_3##
                                      ]
                                    }"""
    subs["mage_repulse_1_item"] = """minecraft:nether_star{##mage_repulse_1_nbt##} 1"""

    subs["mage_zephyr_spell"] = """'{"text":"Mage: Zephyr Spell"}'""";
    subs["mage_zephyr_extra"] = make_description_text([ "Grant Speed II to caster for 5 seconds.", 
                                                        "Grant Strength I to caster and allies for 5 seconds.",
                                                        "Grant Speed I to caster and allies for 80 seconds.",
                                                        ]) + "," + make_cost("Cost: 500MP")
    subs["mage_zephyr_boost_1"] = """'{"text":"+1 Zephyr Speed"}'"""
    subs["mage_zephyr_power"] = "spell.{}.power".format(spell_id())
    subs["mage_zephyr_1_name"] = make_name("Zephyr 1")
    subs["mage_zephyr_1_nbt"] = """HideFlags:1,
                                   Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                   display:{
                                     Name:##mage_zephyr_1_name##,
                                     Lore:[
                                       ##mage_zephyr_extra##,
                                       ##mage_secondary##,
                                       ##mage_zephyr_spell##,
                                       ##mage_3##
                                     ]
                                   }"""
    subs["mage_zephyr_1_item"] = """minecraft:magma_cream{##mage_zephyr_1_nbt##} 1"""

    subs["mage_discharge_spell"] = """'{"text":"Mage: Discharge Spell"}'""";
    subs["mage_discharge_extra"] = make_description_text([  "Deal 3 magic damage and Stun nearby enemies.", 
                                                            "Grant Strength I to nearby players for 5 seconds."
                                                        ]) + "," + make_cost("Cost: 500MP")
    subs["mage_discharge_boost_1"] = """'{"text":"+2 Discharge damage"}'"""
    subs["mage_discharge_power"] = "spell.{}.power".format(spell_id())
    subs["mage_discharge_1_name"] = make_name("Discharge 1")
    subs["mage_discharge_1_nbt"] =   """HideFlags:1,
                                        Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],
                                        display:{
                                          Name:##mage_discharge_1_name##,
                                          Lore:[
                                            ##mage_discharge_extra##, 
                                            ##mage_secondary##, 
                                            ##mage_discharge_spell##,
                                            ##mage_3##
                                          ]
                                        }"""
    subs["mage_discharge_1_item"] = """minecraft:end_rod{##mage_discharge_1_nbt##} 1"""

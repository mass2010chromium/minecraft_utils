def add_mage_items(subs, spell_id, get_uuid):
    subs["mage_melee"] = '\'"Mage: Staff"\''
    subs["mage_primary"] = '\'"Mage: Primary Spell"\''
    subs["mage_secondary"] = '\'"Mage: Secondary Spell"\''

    subs["mage_attack_splash_power"] = "spell.{}.power".format(spell_id())
    subs["mage_splash_power_boost_2"] = '\'"+2 Melee Splash Damage"\''

    subs["mage_basic_staff_name"] = '\'"Basic Staff"\''
    subs["mage_basic_staff_nbt"] = """Unbreakable:1,
                                      Enchantments:[
                                        {id:"minecraft:sharpness",lvl:3}
                                      ],
                                      display:{
                                        Name:##mage_basic_staff_name##,Lore:[##mage_melee##]
                                      }"""
    subs["mage_basic_staff_item"] =  """minecraft:golden_hoe{##mage_basic_staff_nbt##} 1"""
    subs["mage_fireball_staff_name"] = '\'"Fiery Staff"\''
    subs["mage_fireball_staff_nbt"] =    """Unbreakable:1,
                                            Enchantments:[{}],
                                            display:{Name:##mage_fireball_staff_name##,Lore:[##mage_melee##, ##mage_fireball_boost_1##]}"""
    subs["mage_fireball_staff_item"] = """minecraft:golden_hoe{##mage_fireball_staff_nbt##} 1"""
    subs["mage_whirlwind_staff_name"] = '\'"Whirlwind Staff"\''
    subs["mage_whirlwind_staff_nbt"] =   """Unbreakable:1,
                                            Enchantments:[{id:"minecraft:sharpness",lvl:1}],
                                            display:{
                                              Name:##mage_whirlwind_staff_name##,
                                              Lore:[
                                                ##mage_melee##, 
                                                ##mage_zephyr_boost_1##, 
                                                ##mage_splash_power_boost_2##
                                              ]
                                            },
                                            AttributeModifiers:[
                                              {AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:4,Operation:0,"""+get_uuid()+""",Slot:"mainhand"}
                                            ]"""
    subs["mage_whirlwind_staff_item"] = """minecraft:golden_hoe{##mage_whirlwind_staff_nbt##} 1"""

    subs["mage_fireball_spell"] = '\'"Mage: Fireball Spell"\'';
    subs["mage_fireball_boost_1"] = '\'"+10 Fireball Magic Damage"\''
    subs["mage_fireball_power"] = "spell.{}.power".format(spell_id())
    subs["mage_fireball_1_name"] = '\'"Fireball 1"\''
    subs["mage_fireball_1_nbt"] =    """Enchantments:[{}],
                                        display:{Name:##mage_fireball_1_name##,Lore:[##mage_primary##, ##mage_fireball_spell##]}"""
    subs["mage_fireball_1_item"] = """minecraft:blaze_rod{##mage_fireball_1_nbt##} 1"""
    subs["mage_fireball_2_name"] = '\'"Fireball 2"\''
    subs["mage_fireball_2_nbt"] =    """Enchantments:[{}],
                                        display:{
                                          Name:##mage_fireball_2_name##,
                                          Lore:[
                                            ##mage_primary##, 
                                            ##mage_fireball_spell##, 
                                            ##mage_fireball_boost_1##
                                          ]
                                        }"""
    subs["mage_fireball_2_item"] = """minecraft:blaze_rod{##mage_fireball_2_nbt##} 1"""

    subs["mage_repulse_spell"] = '\'"Mage: Arcane Explosion Spell"\'';
    subs["mage_repulse_boost_1"] = '\'"+5 Arcane Explosion Magic Damage"\''
    subs["mage_repulse_power"] = "spell.{}.power".format(spell_id())
    subs["mage_repulse_1_name"] = '\'"Arcane Explosion 1"\''
    subs["mage_repulse_1_nbt"] = """Enchantments:[{}],display:{Name:##mage_repulse_1_name##,Lore:[##mage_secondary##, ##mage_repulse_spell##]}"""
    subs["mage_repulse_1_item"] = """minecraft:nether_star{##mage_repulse_1_nbt##} 1"""

    subs["mage_zephyr_spell"] = '\'"Mage: Zephyr Spell"\'';
    subs["mage_zephyr_boost_1"] = '\'"+1 Zephyr Speed"\''
    subs["mage_zephyr_power"] = "spell.{}.power".format(spell_id())
    subs["mage_zephyr_1_name"] = '\'"Zephyr 1"\''
    subs["mage_zephyr_1_nbt"] = """Enchantments:[{}],display:{Name:##mage_zephyr_1_name##,Lore:[##mage_secondary##, ##mage_zephyr_spell##]}"""
    subs["mage_zephyr_1_item"] = """minecraft:magma_cream{##mage_zephyr_1_nbt##} 1"""

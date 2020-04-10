def add_archer_items(subs, spell_id, get_uuid):
    subs["archer_melee"] = '\'"Archer: Axe"\''
    subs["archer_bow"] = '\'"Archer: Bow"\''
    subs["archer_spell"] = '\'"Archer: Active Spell"\''

    subs["archer_basic_axe_name"] = '\'"Basic Axe"\''
    subs["archer_basic_axe_nbt"] = """Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:##archer_basic_axe_name##,Lore:['"Archer: Axe"']}"""
    subs["archer_basic_axe_item"] = """minecraft:iron_axe{##archer_basic_axe_nbt##} 1"""

    subs["archer_basic_bow_name"] = '\'"Basic Bow"\''
    subs["archer_basic_bow_nbt"] = """Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:power,lvl:3}],display:{Name:##archer_basic_bow_name##,Lore:['"Archer: Bow"']}"""
    subs["archer_basic_bow_item"] = """minecraft:bow{##archer_basic_bow_nbt##} 1"""

    subs["archer_windwalk_spell"] = '\'"Archer: Windwalk Spell"\'';
    subs["archer_windwalk_power"] = "spell.{}.power".format(spell_id())
    subs["archer_windwalk_1_name"] = '\'"Windwalk 1"\''
    subs["archer_windwalk_1_nbt"] = """Enchantments:[{}],display:{Name:##archer_windwalk_1_name##,Lore:[##archer_spell##, ##archer_windwalk_spell##]}"""
    subs["archer_windwalk_1_item"] = """minecraft:crossbow{##archer_windwalk_1_nbt##} 1"""

    subs["archer_piercingArrow_spell"] = '\'"Archer: Piercing Arrow Spell"\'';
    subs["archer_piercingArrow_power"] = "spell.{}.power".format(spell_id())
    subs["archer_piercingArrow_1_name"] = '\'"Piercing Arrow 1"\''
    subs["archer_piercingArrow_1_nbt"] = """Enchantments:[{}],display:{Name:##archer_piercingArrow_1_name##,Lore:[##archer_spell##, ##archer_piercingArrow_spell##]}"""
    subs["archer_piercingArrow_1_item"] = """minecraft:crossbow{##archer_piercingArrow_1_nbt##} 1"""

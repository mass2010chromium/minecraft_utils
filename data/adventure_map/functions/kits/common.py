from utils import *

def add_common_items(subs, spell_id, get_uuid):
    subs["effect_heal_1"] = make_description_text(["+10 HP"],color="red")
    subs["effect_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_1_name"] = make_name("Healing Potion 1")
    subs["potion_heal_1_item"] = """minecraft:dragon_breath{Enchantments:[{}],display:{Name:##potion_heal_1_name##,Lore:[##effect_heal_1##]}}"""
    subs["potion_heal_1_tag"] = "spell.{}.tag".format(spell_id())
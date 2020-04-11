from utils import *

def add_common_items(subs, spell_id, get_uuid):

    subs["effect_heal_1"] = make_description_text(["+10 HP"],color="red")
    subs["effect_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_1_name"] = make_name("Healing Potion 1")
    subs["potion_heal_1_nbt"] = """Enchantments:[{}],display:{Name:##potion_heal_1_name##,Lore:[##effect_heal_1##]}"""
    subs["potion_heal_1_item"] = """minecraft:dragon_breath{##potion_heal_1_nbt##}"""
    subs["potion_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    
def add_food_items(subs, spell_id, get_uuid):
    subs["food_biscuit_nbt"] = "display:{Name:"+make_name("Biscuit")+",Lore:["+make_name("Made of hardtack")+"]}"
    subs["food_biscuit_item"] = """minecraft:cookie{##food_biscuit_nbt##}"""
    subs["food_cookie_1_nbt"] = "display:{Name:"+make_name("Townsburg Special")+",Lore:["+make_name("Made of softtack")+"]}"
    subs["food_cookie_1_item"] = """minecraft:cookie{##food_cookie_1_nbt##}"""
    
    subs["food_melon_1_nbt"] = "display:{Name:"+make_name("Imported melon slice")+",Lore:["+make_name("Made of melon")+"]}"
    subs["food_melon_1_item"] = """minecraft:melon_slice{##food_melon_1_nbt##}"""
    
    subs["food_potato_1_nbt"] = "display:{Name:"+make_name("Imported potato")+",Lore:["+make_name("Potatoes are good for you!")+"]}"
    subs["food_potato_1_item"] = """minecraft:potato{##food_potato_1_nbt##}"""
    
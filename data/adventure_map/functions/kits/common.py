from utils import *

def add_common_items(subs, spell_id, get_uuid):

    subs["effect_heal_1"] = make_description_text(["+10 HP"],color="red")
    subs["effect_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_1_name"] = make_name("Healing Potion 1")
    subs["potion_heal_1_nbt"] = """Enchantments:[{}],display:{Name:##potion_heal_1_name##,Lore:[##effect_heal_1##]}"""
    subs["potion_heal_1_item"] = """minecraft:dragon_breath{##potion_heal_1_nbt##}"""
    subs["potion_heal_1_tag"] = "spell.{}.tag".format(spell_id())
    subs["effect_heal_2"] = make_description_text(["+15 HP"],color="red")
    subs["effect_heal_2_tag"] = "spell.{}.tag".format(spell_id())
    subs["potion_heal_2_name"] = make_name("Healing Potion 2")
    subs["potion_heal_2_nbt"] = """Enchantments:[{}],display:{Name:##potion_heal_2_name##,Lore:[##effect_heal_2##]}"""
    subs["potion_heal_2_item"] = """minecraft:dragon_breath{##potion_heal_2_nbt##}"""
    subs["potion_heal_2_tag"] = "spell.{}.tag".format(spell_id())

    
def add_food_items(subs, spell_id, get_uuid):
    subs["food_biscuit_nbt"] = "display:{Name:"+make_name("Biscuit")+",Lore:["+make_name("Made of hardtack")+"]}"
    subs["food_biscuit_item"] = """minecraft:cookie{##food_biscuit_nbt##}"""
    subs["food_cookie_1_nbt"] = "display:{Name:"+make_name("Townsburg Special")+",Lore:["+make_name("Made of softtack")+"]}"
    subs["food_cookie_1_item"] = """minecraft:cookie{##food_cookie_1_nbt##}"""
    
    subs["food_melon_1_nbt"] = "display:{Name:"+make_name("Imported melon slice")+",Lore:["+make_name("Made of melon")+"]}"
    subs["food_melon_1_item"] = """minecraft:melon_slice{##food_melon_1_nbt##}"""
    
    subs["food_potato_1_nbt"] = "display:{Name:"+make_name("Imported potato")+",Lore:["+make_name("Potatoes are good for you!")+"]}"
    subs["food_potato_1_item"] = """minecraft:potato{##food_potato_1_nbt##}"""
  
def add_armor_items(subs, spell_id, get_uuid):
	subs["speedy_sabatons_name"] = make_name("Speedy Sabatons")
	subs["speedy_sabatons_lore"] = make_description_text(["The wind flows through these boots, ", "causing your stride to flow like the wind.", "Walk Speed Boost: +10%"],color = "white")
	subs["speedy_sabatons_item"] = """minecraft:leather_boots{##speedy_sabatons_nbt##}"""
	subs["speedy_sabatons_tag"] = "spell.{}.tag".format(spell_id())
	subs["speedy_sabatons_nbt"] = """Unbreakable:1, Enchantments:[{id:"minecraft:protection",lvl:1}], display:{Name:##speedy_sabatons_name##, Lore:[##speedy_sabatons_lore##]}, AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.15,Operation:1,"""+get_uuid()+""",Slot:"feet"}]"""
	
	subs["strong_mail_name"] = make_name("Strong Mail")
	subs["strong_mail_lore"] = make_description_text(["Good at protecting you.","Max Health Boost: +20"],color = "white")
	subs["strong_mail_item"] = """minecraft:chainmail_chestplate{##strong_mail##}"""
	subs["strong_mail_tag"] = "spell.{}.tag".format(spell_id())
	subs["strong_mail_nbt"] = """Unbreakable:1, Enchantments:[{id:"minecraft:protection",lvl:1}], display:{Name:##strong_mail_name##, Lore:[##strong_mail_lore##]}, AttributeModifiers:[]"""
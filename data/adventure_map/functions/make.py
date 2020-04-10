import re
from kits.mage import *
from kits.archer import *

subs = dict()

_least = 595045
_most = 291484
def get_uuid():
    global _most
    global _least
    _least += 1
    return "UUIDLeast:{},UUIDMost:{}".format(_least, _most)

### Fine hp
subs["health_item_name"] = '\'"HP indicator"\''
subs["health_item_lore"] = '[\'"Helps modify your health."\']'

subs["health_stat"] = "stat.health"
subs["hunger"] = "stat.hunger"
subs["player_world_damage"] = "damage_blocked"
subs["regen_tick"] = "fine_hp.regt"
subs["fast_regen_ticks"] = "fine_hp.potreg"
subs["regen_amount"] = "fine_hp.ramt"
subs["regen_amount_base"] = "fine_hp.ramtb"
subs["regen_frequency"] = "fine_hp.regfreq"
subs["has_died"] = "fine_hp.die"
subs["damage_tick"] = "fine_hp.dt"

subs["mob_base_hp"] = "200"
subs["skeleton_base_hp"] = "500"
subs["skeleton_last_base_hp"] = "fine_hp.skhack"
subs["name_reset_ticks"] = "fine_hp.dispT"
subs["name_reset_numticks"] = "200"
subs["name_swap_space"] = "HandItems[0].tag.display.Name"

subs["health"] = "fine_hp.hp"
subs["invulnerable_ticks"] = "fine_hp.invul"
subs["physical_damage"] = "fine_hp.dmg"
subs["magic_damage"] = "fine_hp.mdmg"
subs["physical_resist"] = "fine_hp.dmgr"
subs["magic_resist"] = "fine_hp.mdmgr"
subs["physical_resist_base"] = "fine_hp.dmgrb"
subs["magic_resist_base"] = "fine_hp.mdmgrb"
subs["last_health"] = "fine_hp.prev_hp"
subs["max_health"] = "fine_hp.mh"
subs["hp_check_tick"] = "fine_hp.hpct"
subs["tracker"] = "fine_hp.tracker"
subs["mob_death"] = "fine_hp.isdead"
subs["initialized"] = "fine_hp.init" # unused
subs["health_fraction"] = "fine_hp.hp_frac"

subs["t0"] = "fine_hp.tmp0"
subs["t1"] = "fine_hp.tmp1"
subs["t2"] = "fine_hp.tmp2"
subs["t3"] = "fine_hp.tmp3"
subs["t4"] = "fine_hp.tmp4"
subs["t5"] = "fine_hp.tmp5"


### Mana
subs["mp"] = "mana.mana"
subs["max_mana"] = "1000"
subs["mp_regen"] = "mana.mana_regen"
subs["mp_regen_base"] = "mana.mana_regb"

### Kits
_spell_id = -1
def spell_id():
    global _spell_id
    _spell_id += 1
    return _spell_id

add_mage_items(subs, spell_id, get_uuid)
add_archer_items(subs, spell_id, get_uuid)

subs["knight_melee"] = '\'"Knight: Sword"\''
subs["knight_spear"] = '\'"Knight: Spear"\''
subs["knight_spell"] = '\'"Knight: Active Spell"\''

# subs["knight_attack_splash_power"] = "spell.{}.power".format(spell_id())
# subs["knight_splash_power_boost_2"] = '\'"+2 Melee Splash Daknight"\''

subs["knight_basic_sword_name"] = '\'"Basic Sword"\''
subs["knight_basic_sword_item"] = """minecraft:stone_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:5},{id:"minecraft:sweeping",lvl:1}],display:{Name:##knight_basic_sword_name##,Lore:[##knight_melee##]}} 1"""
# subs["knight_fireball_sword_name"] = '\'"Fiery Sword"\''
# subs["knight_fireball_sword_item"] = """minecraft:golden_hoe{Unbreakable:1,Enchantments:[{}],display:{Name:##knight_fireball_sword_name##,Lore:[##knight_melee##, ##knight_fireball_boost_1##]}} 1"""
# subs["knight_fireball_sword_replenish"] = "replenish_{}".format(replenish_id())
# subs["knight_whirlwind_sword_name"] = '\'"Whirlwind Blade"\''
# subs["knight_whirlwind_sword_item"] = """minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:##knight_whirlwind_sword_name##,Lore:[##knight_melee##, ##knight_zephyr_boost_1##, ##knight_splash_power_boost_2##]},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:4,Operation:0,"""+get_uuid()+""",Slot:"mainhand"}]} 1"""

subs["knight_spear"] = '\'"Knight: Spear"\'';
# subs["knight_spear_boost_1"] = '\'"+1 Spear Damage"\''
subs["knight_spear_power"] = "spell.{}.power".format(spell_id())
subs["knight_spear_1_name"] = '\'"Spear 1"\''
subs["knight_spear_1_item"] = """minecraft:trident{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2}],display:{Name:##knight_spear_1_name##,Lore:[##knight_spear##]},AttributeModifiers:[]} 1"""

subs["knight_groundPound_spell"] = '\'"Knight: Ground Pound Spell"\'';
knight_groundPound_spellID = spell_id()
subs["knight_groundPound_boost_1"] = '\'"+1 Ground Pound Power"\''
subs["knight_groundPound_power"] = "spell.{}.power".format(knight_groundPound_spellID)
subs["knight_groundPound_riseTime"] = "spell.{}.time".format(knight_groundPound_spellID)
subs["knight_groundPound_1_name"] = '\'"Ground Pound 1"\''
subs["knight_groundPound_1_item"] = """minecraft:anvil{Enchantments:[{}],display:{Name:##knight_groundPound_1_name##,Lore:[##knight_spell##, ##knight_groundPound_spell##]}} 1"""
# subs["knight_fireball_2_name"] = '\'"Fireball 2"\''
# subs["knight_fireball_2_item"] = """minecraft:blaze_rod{Enchantments:[{}],display:{Name:##knight_fireball_2_name##,Lore:[##knight_primary##, ##knight_fireball_spell##, ##knight_fireball_boost_1##]}} 1"""


# Common kit stuff
    
subs["effect_heal_1"] = '\'"+10 HP"\''
subs["effect_heal_1_tag"] = "spell.{}.tag".format(spell_id())
subs["potion_heal_1_name"] = '\'"Healing Potion 1"\''
subs["potion_heal_1_item"] = """minecraft:dragon_breath{Enchantments:[{}],display:{Name:##potion_heal_1_name##,Lore:[##effect_heal_1##]}}"""
subs["potion_heal_1_tag"] = "spell.{}.tag".format(spell_id())



subs["enemies"] = "Enemies"
subs["friendlies"] = "Friendlies"

files = [   "fine_damage/loop", 
            "fine_damage/init", 
            "fine_damage/add_player", 
            "fine_damage/remove_player", 
            "fine_damage/common_healthbar", 
            "fine_damage/common_resist", 
            "fine_damage/player_healthbar", 
            "fine_damage/player_healthbar_helper",
            "fine_damage/mob_healthbar", 
            "fine_damage/skeleton_healthbar", 
            "fine_damage/mob_healthbar_helper",
            
            "mana/init", 
            "mana/loop", 
            
            "summons/basic_zombie", 
            "summons/well_zombie", 
            "summons/armored_zombie", 
            "summons/forest_goon", 
            "summons/basic_skeleton", 
            "summons/basic_spider", 
        
            "adventure/adventure_setup", 
        
            "kits/mage", 
            "kits/mage_spells", 
            "kits/mage_all_items", 
            "kits/archer", 
            "kits/archer_spells", 
            "kits/archer_all_items", 
            "kits/knight", 
            "kits/knight_spells", 
            "kits/knight_all_items", 
            "kits/common_spells", 
            "kits/heal_pots", 
            
            "shops/archer_shop_1", 
        ]

for k, v in subs.items():
    subs[k] = re.sub("\n +", " ", v)

changed = True
while changed:
    changed = False
    for k, v in subs.items():
        v_new = v
        for k2, v2 in subs.items():
            v_new = v_new.replace("##{}##".format(k2), v2)
        if not changed and v_new != v:
            changed = True
        subs[k] = v_new

for f in files:
    with open("{}.template".format(f), "r") as infile:
        with open(f+".mcfunction", "w") as outfile:
            locals = subs.copy()
            
            newline_written = True
            input_lines = infile.readlines()
            while input_lines:
                l = input_lines.pop(0)
                if not l[0].isspace():
                    if not newline_written:
                        outfile.write("\n")
                        newline_written = True
                    newline_written = False
                    l = l.strip()
                else:
                    l = " " + l.strip()
                for k, v in subs.items():
                    l = l.replace("##{}##".format(k), v)
                
                outfile.write(l)
import re
from kits.mage import *
from kits.archer import *
from kits.knight import *
from kits.common import *

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

subs["entity_linker"] = "linkID"

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
subs["invisible_mob"] = "needInvisBar"
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
subs["max_health_base"] = "fine_hp.mh_base"
subs["hp_check_tick"] = "fine_hp.hpct"
subs["tracker"] = "fine_hp.tracker"
subs["mob_death"] = "fine_hp.isdead"
subs["initialized"] = "fine_hp.init" # unused
subs["health_fraction"] = "fine_hp.hp_frac"

subs["ranged_mob"] = "rangedTag"
subs["ranged_projectile"] = "rangedMissile"
subs["ranged_tick"] = "rangedCooldown"
subs["ranged_hit"] = "rangedHit"
subs["ranged_freq"] = "rangedCDBase"
subs["ranged_physical"] = "rangedPD"
subs["ranged_magic"] = "rangedMD"

subs["charge_mob"] = "chargeTag"
subs["charge_tick"] = "chargeCooldown"
subs["charge_freq"] = "chargeCDBase"
subs["charge_physical"] = "chargePD"
subs["charge_magic"] = "chargeMD"
subs["charge_vx"] = "chargeVY"
subs["charge_vz"] = "chargeVX"

subs["t0"] = "fine_hp.tmp0"
subs["t1"] = "fine_hp.tmp1"
subs["t2"] = "fine_hp.tmp2"
subs["t3"] = "fine_hp.tmp3"
subs["t4"] = "fine_hp.tmp4"
subs["t5"] = "fine_hp.tmp5"

subs["random"] = "random"
subs["rand_t0"] = "random.t0"
subs["rand_t1"] = "random.t1"
subs["rand_t2"] = "random.t2"


### Mana
subs["mp"] = "mana.mana"
subs["max_mana"] = "1000"
subs["mp_regen"] = "mana.mana_regen"
subs["melee_mp"] = "mana.mana_steal"
subs["melee_mp_cooldown"] = "mana.mscd"
subs["melee_mp_cooldown_ticks"] = "10"
subs["mp_regen_ticks"] = "mana.regen_tick"
subs["mp_regen_frequency"] = "2"
subs["mp_regen_base"] = "mana.mana_regb"

### Kits
_spell_id = -1
def spell_id():
    global _spell_id
    _spell_id += 1
    return _spell_id

add_mage_items(subs, spell_id, get_uuid)
add_archer_items(subs, spell_id, get_uuid)
add_knight_items(subs, spell_id, get_uuid)
add_common_items(subs, spell_id, get_uuid)
add_food_items(subs, spell_id, get_uuid)
add_armor_items(subs, spell_id, get_uuid)

subs["current_region"] = "current_region"
subs["globals"] = "[GLOBALS]"
subs["persistence"] = "persistence"

subs["enemies"] = "Enemies"
subs["friendlies"] = "Friendlies"

subs["blaze_magic_damage"] = "blaze.m_splash"
subs["blaze_physical_damage"] = "blaze.p_splash"

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
            
            "rng/rng_init", 
            "rng/rng", 
            
            "summons/basic_zombie", ###region 1 (pre-townsburg forest)
            "summons/well_zombie", 
            "summons/armored_zombie", 
            "summons/forest_goon", 
            "summons/basic_skeleton", 
            "summons/basic_spider", 
            "summons/dummy_pig",
            "summons/dummy",
			"summons/town_guard", ###Iron Golems are weird
			"summons/townsburg_civilian",
            "summons/mountain_path_zombie", ###region 2 (post-townsburg mountain)
            "summons/mountain_path_zombie2", 
            "summons/mountain_blaze",
            "summons/armored_zombie2",
            "summons/gravel_guard", ###region 3 (mountain wasteland)
            "summons/gravel_guard2",
            "summons/rock_elemental",
            "summons/starving_corpse",
            "summons/trail_bandit",
			"summons/mountain_goat",
			"summons/skinny_animal",
			"summons/well_hydrated_pundit", ###region 4 (desert)
			"summons/thirsty_camel",
			"summons/tomb_scarab",
			"summons/sand_slinger",
			"summons/desert_scorpion",
			"summons/khorsonah_bat", ###region 5 (sewer)
			"summons/sewer_rat",
			"summons/animated_fecal_matter",
            "summons/sludge_trudger",
			"summons/khorsonah_guard",
            "summons/sick_bum",
			"summons/khorsonah_civilian", ###region 6 (Khors Onah)
            
            
            "summons/ranged_test",
            "summons/charging_test",
            "summons/basic_invis",
			
            "summons/enemy_common",
			"summons/enemy_aggro",
        
            "adventure/adventure_setup", 
            
            "spells/lightning",
            "spells/lightning_recurse",
        
            "spells/mage/discharge",
            "spells/mage/fireball",
            "spells/mage/wind_spear",
			"spells/dev/blink",
            
            "spells/mobs/blaze",
            "spells/mobs/blaze_fireball",
            
            "spells/mobs/ranged_mob_loop",
            "spells/mobs/simple_ranged_shoot",
            "spells/mobs/simple_ranged_hit",
            "spells/mobs/ranged_generic_loop",
            
            "spells/mobs/charge",
            "spells/mobs/charge_loop",
            
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
            "kits/all_foods", 
            "kits/heal_pots", 
            
            "shops/archer_shop_1", ###Townsburg
            "shops/knight_shop_1",
            "shops/mage_shop_1",
            "shops/food_shop_1",
            "shops/potion_shop_1",
			"shops/armor_shop_3", ###Wastelands
			"shops/potion_shop_3",
			"shops/cactus_shop_4", ###Desert
			"shops/armor_shop_6", ###Khors Onah
			"shops/archer_shop_6",
			"shops/knight_shop_6",
			"shops/mage_shop_6",			
			"shops/food_shop_6",
			"shops/potion_shop_6",
			"shops/butcher_6",
            "shops/scammer_6",
            "shops/traveling_trader_6",
			
			"npcs/librarian_1",
			"npcs/priest_1",
			"npcs/hiddencave_hermit",
			"npcs/gardener_1",
			"npcs/cave_hermit",
			"npcs/john",
			"npcs/smalloasis_hermit",
            "npcs/khorsonah_citizen1",
            "npcs/khorsonah_citizen2",
            "npcs/khorsonah_citizen3",
            "npcs/desert_adventurer"
        ]

for k, v in subs.items():
    subs[k] = re.sub("\n *", " ", v)

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
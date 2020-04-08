subs = dict()

### Fine hp
subs["health_item"] = "minecraft:golden_helmet"
subs["health_item_enchants"] = '{id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1}'
subs["health_item_name"] = '\'"HP indicator"\''
subs["health_item_lore"] = '[\'"Helps modify your health."\']'

subs["health_stat"] = "stat.health"
subs["hunger"] = "stat.hunger"
subs["player_world_damage"] = "damage_blocked"
subs["regen_tick"] = "fine_hp.regt"
subs["regen_amount"] = "fine_hp.ramt"
subs["regen_amount_base"] = "fine_hp.ramtb"
subs["regen_frequency"] = "fine_hp.regfreq"
subs["has_died"] = "fine_hp.die"
subs["damage_tick"] = "fine_hp.dt"

subs["mob_base_hp"] = "200"
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


### Mana
subs["mp"] = "mana.mana"
subs["max_mana"] = "1000"
subs["mp_regen"] = "mana.mana_regen"
subs["mp_regen_base"] = "mana.mana_regb"

### Kits
_replenish_id = -1
def replenish_id():
    global _replenish_id
    _replenish_id += 1
    return _replenish_id

_spell_id = -1
def spell_id():
    global _spell_id
    _spell_id += 1
    return _spell_id

subs["mage_melee"] = '\'"Mage: Staff"\''
subs["mage_primary"] = '\'"Mage: Primary Spell"\''
subs["mage_secondary"] = '\'"Mage: Secondary Spell"\''

subs["mage_attack_splash_power"] = "spell.{}.power".format(spell_id())
subs["mage_splash_power_boost_2"] = '\'"+2 Melee Splash Damage"\''

subs["mage_basic_staff_name"] = '\'"Basic Staff"\''
subs["mage_basic_staff_item"] = """minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:3}],display:{Name:##mage_basic_staff_name##,Lore:[##mage_melee##]}} 1"""
subs["mage_basic_staff_replenish"] = "replenish_{}".format(replenish_id())
subs["mage_fireball_staff_name"] = '\'"Fiery Staff"\''
subs["mage_fireball_staff_item"] = """minecraft:golden_hoe{Unbreakable:1,Enchantments:[{}],display:{Name:##mage_fireball_staff_name##,Lore:[##mage_melee##, ##mage_fireball_boost_1##]}} 1"""
subs["mage_fireball_staff_replenish"] = "replenish_{}".format(replenish_id())
subs["mage_whirlwind_staff_name"] = '\'"Whirlwind Staff"\''
subs["mage_whirlwind_staff_item"] = """minecraft:golden_hoe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:1}],display:{Name:##mage_whirlwind_staff_name##,Lore:[##mage_melee##, ##mage_zephyr_boost_1##, ##mage_splash_power_boost_2##]}} 1"""
subs["mage_whirlwind_staff_replenish"] = "replenish_{}".format(replenish_id())

subs["mage_fireball_spell"] = '\'"Mage: Fireball Spell"\'';
subs["mage_fireball_boost_1"] = '\'"+1 Fireball Power"\''
subs["mage_fireball_power"] = "spell.{}.power".format(spell_id())
subs["mage_fireball_1_name"] = '\'"Fireball 1"\''
subs["mage_fireball_1_item"] = """minecraft:blaze_rod{Enchantments:[{}],display:{Name:##mage_fireball_1_name##,Lore:[##mage_primary##, ##mage_fireball_spell##]}} 1"""
subs["mage_fireball_1_replenish"] = "replenish_{}".format(replenish_id())
subs["mage_fireball_2_name"] = '\'"Fireball 2"\''
subs["mage_fireball_2_item"] = """minecraft:blaze_rod{Enchantments:[{}],display:{Name:##mage_fireball_2_name##,Lore:[##mage_primary##, ##mage_fireball_spell##, ##mage_fireball_boost_1##]}} 1"""
subs["mage_fireball_2_replenish"] = "replenish_{}".format(replenish_id())

subs["mage_zephyr_spell"] = '\'"Mage: Zephyr Spell"\'';
subs["mage_zephyr_boost_1"] = '\'"+1 Zephyr Speed"\''
subs["mage_zephyr_power"] = "spell.{}.power".format(spell_id())
subs["mage_zephyr_1_name"] = '\'"Zephyr 1"\''
subs["mage_zephyr_1_item"] = """minecraft:magma_cream{Enchantments:[{}],display:{Name:##mage_zephyr_1_name##,Lore:[##mage_secondary##, ##mage_zephyr_spell##]}} 1"""
subs["mage_zephyr_1_replenish"] = "replenish_{}".format(replenish_id())


subs["archer_melee"] = '\'"Archer: Axe"\''
subs["archer_bow"] = '\'"Archer: Bow"\''
subs["archer_spell"] = '\'"Archer: Active Spell"\''

subs["archer_basic_axe_name"] = '\'"Basic Axe"\''
subs["archer_basic_axe_item"] = """minecraft:iron_axe{Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:##archer_basic_axe_name##,Lore:['"Archer: Axe"']}} 1"""

subs["archer_basic_bow_name"] = '\'"Basic Bow"\''
subs["archer_basic_bow_item"] = """minecraft:bow{Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:power,lvl:5}],display:{Name:##archer_basic_bow_name##,Lore:['"Archer: Bow"']}} 1"""

subs["archer_piercingArrow_spell"] = '\'"Archer: Piercing Arrow Spell"\'';
subs["archer_piercingArrow_power"] = "spell.{}.power".format(spell_id())
subs["archer_piercingArrow_1_name"] = '\'"Piercing Arrow 1"\''
subs["archer_piercingArrow_1_item"] = """minecraft:crossbow{Enchantments:[{}],display:{Name:##archer_piercingArrow_1_name##,Lore:[##archer_spell##, ##archer_piercingArrow_spell##]}} 1"""


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
            "fine_damage/mob_healthbar_helper",
            
            "mana/init", 
            "mana/loop", 
            
            "summons/basic_zombie", 
            "summons/basic_skeleton", 
        
            "adventure/adventure_setup", 
        
            "kits/mage", 
            "kits/mage_spells", 
            "kits/mage_all_items", 
            "kits/archer", 
            "kits/archer_spells", 
            "kits/knight", 
        ]

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
                changed = True
                while changed:
                    changed = False
                    for k, v in subs.items():
                        l_new = l.replace("##{}##".format(k), v)
                        if not changed and l != l_new:
                            changed = True
                        l = l_new
                
                outfile.write(l)
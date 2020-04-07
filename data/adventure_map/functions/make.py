subs = dict()

subs["health_item"] = "minecraft:golden_helmet"
subs["health_item_enchants"] = '{id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1}'
subs["health_item_name"] = '\'"HP indicator"\''
subs["health_item_lore"] = '[\'"Helps modify your health."\']'

subs["health_stat"] = "stat.health"
subs["hunger"] = "stat.hunger"
subs["absorption_hp"] = "39"
subs["player_base_hp"] = "180"
subs["regen_tick"] = "fine_hp.regt"
subs["regen_amount"] = "fine_hp.ramt"
subs["regen_frequency"] = "fine_hp.regfreq"
subs["has_died"] = "fine_hp.die"
subs["damage_tick"] = "fine_hp.dt"

subs["mob_base_hp"] = "200"
subs["name_reset_ticks"] = "fine_hp.dispT"
subs["name_reset_numticks"] = "200"
subs["name_swap_space"] = "HandItems[0].tag.display.Name"

subs["health"] = "fine_hp.hp"
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

files = [   "fine_damage/loop", 
            "fine_damage/init", 
            "fine_damage/common_healthbar", 
            "fine_damage/player_healthbar", 
            "fine_damage/mob_healthbar", 
            "fine_damage/mob_healthbar_helper"]

for f in files:
    with open("{}_template.mcfunction".format(f), "r") as infile:
        with open(f+".mcfunction", "w") as outfile:
            locals = subs.copy()
            
            newline_written = True
            input_lines = infile.readlines()
            while input_lines:
                l = input_lines.pop(0)
                if not l[0].isspace():
                    if not newline_written:
                        outfile.write("\n")
                    newline_written = False
                l = l.strip()
                for k, v in subs.items():
                    l = l.replace("##{}##".format(k), v)
                outfile.write(l)
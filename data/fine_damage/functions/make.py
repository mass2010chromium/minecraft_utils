subs = dict()

subs["health_item"] = "minecraft:golden_helmet"
subs["health_item_enchants"] = '{id:"minecraft:binding_curse", lvl:1},{id:"minecraft:vanishing_curse",lvl:1}'
subs["health_item_name"] = '\'"HP indicator"\''
subs["health_item_lore"] = '[\'"Helps modify your health."\']'

subs["health_stat"] = "stat.health"
subs["absorption_hp"] = "39"
subs["player_base_hp"] = "180"
subs["regen_tick"] = "fine_damage.regt"
subs["regen_amount"] = "fine_damage.ramt"
subs["hp_check_tick"] = "fine_damage.hpct"
subs["has_died"] = "fine_damage.die"

subs["health"] = "fine_damage.hp"
subs["max_health"] = "fine_damage.mh"
subs["damage_tick"] = "fine_damage.dt"

subs["t0"] = "fine_damage.tmp0"
subs["t1"] = "fine_damage.tmp1"
subs["t2"] = "fine_damage.tmp2"

files = ["loop", "init", "player_healthbar"]

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
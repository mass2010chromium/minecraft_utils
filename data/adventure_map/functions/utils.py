
def make_name(name):
    return "'{" + '"italic":false,"text":"{}"'.format(name) + "}'"
def make_cost(name):
    return "'{" + '"italic":false,"color":"blue","text":"{}"'.format(name) + "}'"

def make_description_text(strings, color="white"):
    results = ["'{" + '"italic":false,"color":"{}","text":"{}"'.format(color, x) + "}'" for x in strings]
    return ",".join(results)

def make_speed_damage_text(speed, damage, slot="When in main hand:"):
    return ",".join(["""'{"text":""}'""",
                     "'{" + '"italic":false,"color":"gray","text":"{}"'.format(slot) + "}'",
                     "'{" + '"italic":false,"color":"dark_green","text":" {} Attack Speed"'.format(speed) + "}'",
                     "'{" + '"italic":false,"color":"dark_green","text":" {} Attack Damage"'.format(damage) + "}'"
                    ])
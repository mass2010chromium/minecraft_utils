
def make_name(name):
    return "'{" + '"text":"{}","italic":false'.format(name) + "}'"
def make_cost(name):
    return "'{" + '"text":"{}","color":"blue","italic":false'.format(name) + "}'"

def make_description_text(strings, color="white"):
    results = ["'{" + '"text":"{}","color":"{}","italic":false'.format(x, color) + "}'" for x in strings]
    return ",".join(results)

def make_name(name):
    return "'{" + '"text":"{}","italic":false'.format(name) + "}'"

def make_description_text(strings):
    results = ["'{" + '"text":"{}","color":"white","italic":false'.format(x) + "}'" for x in strings]
    return ",".join(results)
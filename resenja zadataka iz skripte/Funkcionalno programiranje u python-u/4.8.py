import json
import sys

def pripada(k, tacka):

    koord = tacka["koordinate"]

    if (k == 1):
        if (koord[0] >= 0 and koord[1] >= 0):
            return True
        return False
    elif (k == 2):
        if (koord[0] <= 0 and koord[1] >= 0):
            return True
        return False
    elif (k == 3):
        if (koord[0] <= 0 and koord[1] <= 0):
            return True
        return False
    elif (k == 4):
        if (koord[0] >= 0 and koord[1] <= 0):
            return True
        return False
    else:
        return False

if len(sys.argv) != 2:
    print("Error from call")
    exit(1)

try:
    n = int(sys.argv[1])
    

except ValueError:
    print("Cast error")
    sys.exit(1)

try:
    with open("tacke.json", "r") as f:
        tacke = json.load(f)
        # tacke su lista recnika!
        # to se uvek dobija sa json.load(_)
except IOError:
    print("Greska pri otvaranju datoteke.")
    sys.exit(1)

tacke_filtrirane = filter(lambda x: pripada(n, x), tacke)

#ispisujemo prvo tacke koje su u datom kvadrantu
l = list(tacke_filtrirane)
print(l)

#l je trenutno lista recnika sa tackama koja su u datom kvadrandu
minimum = min(l, key=lambda x: x['koordinate'][0]**2 + x['koordinate'][1]**2)
print(minimum['teme'])

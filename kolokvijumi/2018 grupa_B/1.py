import sys
import os
import json
import math

def rastojanje(s1, d1, s2, d2):

    sirina1 = math.radians(s1)
    duzina1 = math.radians(d1)
    sirina2 = math.radians(s2)
    duzina2 = math.radians(d2)

    a = math.sin(((sirina2 - sirina1)/2.0)**2) + math.cos(sirina1)*math.cos(sirina2)*math.sin(((duzina1 - duzina2)/2.0)**2)
    c = math.atan(math.sqrt(a) / math.sqrt(1-a))

    udaljenost = 6371*c
    return udaljenost


def agenti_u_okolini(agenti, trenutna_lokacija, d):

    a = trenutna_lokacija[0]
    b = trenutna_lokacija[1]
    return list(filter(lambda x: rastojanje(a, b, x['lokacija'][0], x['lokacija'][1]) < d,agenti))
    

if len(sys.argv) != 2:
    print("Greska u broju argumenata")
    sys.exit(1)

try:
    with open(sys.argv[1], "r") as f:
        agenti = json.load(f)
except IOError:
    print("Greska pri citanju datoteke")
    sys.exit(1)

try:
    tr_sirina = float(input())
    tr_duzina = float(input())
    d = int(input())
except ValueError:
    print("Value error")
    exit(1)

tr_lokacija = [tr_sirina, tr_duzina]


# deo pod a)
for a in agenti_u_okolini(agenti, tr_lokacija, d):
    print(a)

print()
print()
print()

# deo pod b)

lista = agenti_u_okolini(agenti, tr_lokacija, d)
lista.sort(key=lambda x: x['dokument'])

for key in lista:
    print(key['ime'])


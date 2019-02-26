# Python - tipovi podataka i metode za rad nad istim

## Rad sa stringovima
- s = [] - **definisanje praznog stringa.**
- s[k] - **karakter na _'k'-tom_ indeksu stringa _'s'_.**
- s[a:b] - **projekcija stringa, izdvaja se podstring koji je sastavljen od karaktera sa indeksima iz opsega [a, b) stringa _'s'_.**
- s.strip() - **funkcija skida sve beline sa leve i desne strane stringa _'s'_.**
- len(s) - **vraca duzinu stringa _'s'_.**
- s.lower() - **vraca string sa svim malim slovima.**
- s.upper() - **analogno vraca string sa svim velikim slovima.**
- s.replace(s1, s2) - **menja string _'s1'_ stringom _'s2'_.**
- s.split(c\) - **razdvaja string na podstringove koji su razdvojeni sa _'c'_. Rezultat je vracen u obliku liste.**
___________________________
## Rad sa datotekama
- f = open("ime_datoteke.txt", "r") - **otvara se datoteka _'ime_datoteke.txt'_ za pisanje. f je nesto nalik na FILE\* u C-u.**
- f.close() - **zatvara otvorenu datoteku.**
- f.write("Nesto") - **upisuje u datoteku _'f'_ string "Nesto"**
- f.read() - **procita ceo sadrzaj datoteke, pretvori ga u string i to vrati kao povratna vrednost.**
- f.readlines() - **vraca listu linija datoteke _'f'_.**
- list(f) - **vraca listu linija datoteke _'f'_.**
- f.seek(0, 0) - **pozicionira nas na pocetak datoteke.**
#### Dobra praksa za rad sa datotekama:
```
with open("ime_datoteke", "r") as f:
	...
	...
	...
```
#### Kada se izadje iz _'with'_ bloka, datoteka se sama zatvara, bez close-a.
___________
## Matematicka biblioteka
``` 
import math 
```
- math.sqrt(k) - **vraca kvadratni koren broja _'k'_.**
- math.log(k,o) - **vraca logaritam sa osnovom _'o'_ od broja _'k'_.**
- math.sin(ugao_u_radijanima), math.cos(ugao_u_radijanima) - **vraca sinus i kosinus datog ugla.**
- math.factorial(k) - **vraca faktorijel broja _'k'_.**
_____________
## Rad sa JSON bibliotekom
```
import json
```
- p = {"kljuc1":vrednost1, "kljuc2":vrednost2, ..} - **ovako se pravi json objekat _'p'_.**
- json.dumps(p) - **ova funkcija vraca string koji sadrzi JSON prezentaciju objekta _'p'_.**
- json.dump(p, f) - **upisuje string koji sadrzi JSON prezentaciju objekta _'p'_ u datoteku _'f'_.**
- json.load(f) - **ucitava iz datoteke string koji sadrzi JSON format objekta i vraca referencu na mapu koja je konstruisana na osnovu .json datoteke.**
__________
## Biblioteka za generisanje pseudoslucajnih brojeva
``` 
import random 
```
- random.random() - **vraca pseudoslucajan broj u intervalu [0.0, 1.0).**
- random.randint(a,b) - **vraca pseudoslucajan ceo broj u intervalu [a,b).**
- random.choice(list) - **vraca pseudoslucajni element iz liste _'list'_.**
___________
## Funkcije i metode za rad sa listama

- list = [] - **definisanje prazne liste.**
- list.append(e) - **dodavanje elementa _'e'_ u listu.**
- list.remove(e) - **brisanje prvog pojavljivanja elementa _'e'_ u listi.**
- list.count(e) - **vraca koliko puta se element e pojavio u listi.**
- list.index(e) - **vraca indeks prvog pojavljivanja elementa _'e'_ u listi.**
- len(list) - **vraca broj elemenata liste.**
- list[0:k] - **projekcija liste sa elementima ciji su indeksi iz intervala [0,k).**
- del list[a:b] - **obrisi sve elemente liste ciji su indeksi iz intervala [a,b).**
_____________
## Koriscenje mape
 ##### Notacija mape - ``` {key:value, key:value, key:value, ...} ```
- mapa = {} - **definisanje prazne mape.**
- mapa.keys() - **vraca listu kljuceva mape.**
- mapa.values() - **vraca listu vrednosti iz mape.**
- mapa.has_key(key) - **vraca True/False ako se kljuc _'key'_ nalazi/ne nalazi u mapi.**

##### Prolazak/iteracija kroz mapu (primer stampanja mape)
```
    for key in mapa:
        print "({}, {})".format(str(key), str(mapa[key]))
```
___________
## Funkcije za rad sa datumima
```
from datetime import datetime
```
- datetime.now() - **vraca trenutni datum i vreme.**
- datetime.year, datetime.month, datetime.day, datetime.hour, datetime.minute, datetime.second - **analogno vraca godinu mesec dan itd..**
- datetime.strftime(format) - **vraca string reprezentaciju objekta datum na osnovu zadatog formata.**
- datetime.strptime(niska, format) - **vraca objekat tadetime konstruisan na osnovu niske u zadatom formatu.**
- datetime(godina, mesec, dan [, sat [, minut [, sekund]]]) - **dobija se novi objekat datuma.**
________
## Torke
- torka_1= ("Daffy", "Duck", 11) - **definisanje jedne torke elemenata.**
- torka_2 = ((1,2,'a'), (3,4,'b'), (5,6,'c'), (7,8,'d')) - **torka torki. :)**
- print torka_2[0] - **ispisuje se prvi element torke _'torka_2'_ koji je i sam torka.**
#### Elementi torke ne moraju da imaju iste tipove elemenata na istim mestima.
- torka = ( (1,2,3), ("danas", "je", 5), ([1,2,3,4], 1, "wow") )
    ###### Poredjenje izmedju torki koje imaju razlicite tipove na razlicitim mestima je idalje moguce tako sto se za dva elementa koji se porede uzmu nazivi tipova i leksikografski se uporede.


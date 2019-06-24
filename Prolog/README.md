# Prolog - tips and tricks

## Aritmeticke operacije 

- **=:=** - aritmeticki jednaki
- **=\=** - aritmeticki nisu jednaki 
- **<, =<, >, >=** - aritmeticka poredjenja
- **+, -, *, /, //(celobrojno deljenje), div, mod, **(stepenovanje)**
- **is** - (primer X is Y) --> Ako je X promenljiva , tada se njoj dodeljuje vrednost koju ima term Y (mora biti
poznata vrednost), a ukoliko X nije promenljiva , X is Y se svodi na X =:= Y.

## Logicke operacije
- kada klauze odvajamo zarezom, zarez predstavlja konjukciju.
- kada klauze odvajamo sa **;**, to predstavlja disjunkciju.

## Liste

- [] - prazna lista
- [a,b,c] - jedan od mogucih zapisa liste koja ima tacno tri elementa(terma)
- [G|R] - zapis liste u kom su jasno odvojeni glava i rep liste. Rep liste je uvek lista!
- [G|_] - _ je dzoker, moze da zameni bilo sta i smatramo da je nebitno sta se nalazi na tom mestu.

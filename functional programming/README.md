# Dokumentacija za Haskell
## Pokretanje interpretera

Interpreter pokrecemo iz terminala komandom:

``` 
ghci
```

  i otvorice nam se interaktivni interpreter:

```
  Prelude>  
```

  Interpretatoru dodajemo mogucnost izvrsavanja funkcija koja je definisana u fajlu
  ime_programa.hs komandom:

```
 Prelude> :load ime_programa.hs
```

  Iz interpretera se izlazi komandom :quit 

```
  Prelude> :quit 
```

## Tipski razredi (definisu funkcije koje neki razred mora da implementira)
-  Eq - tipovi sa jednakoscu (==,/=)
-  Ord - tipovi sa uredjenjem (<,<=,>,>=,...)
-  Num - numericki tipovi (+,-,*,...)
-  Integral - celobrojni tipovi (div, mod,...)
-  Fractional - razlomacki tipovi (/, recip,...)

**Funkcije preslikavaju vrednosti jednog tipa (ili tipskog razreda) u vrednost drugog tipa (ili tipskog razreda):**

``` duplo :: Int -> Int 
```

## Aritmeticke operacije i funckije nad tipovima Int , Integer , Float:
- +, -, *, /,
- ^^ - stepen (tip Int)
- ** - stepen (tip Float)
- mod , div , log , sqrt , sin , cos , tan 
- fromIntegral - funkcija koja vrsi kastovanje integer-a u double.

## Grananje sa if naredbom preko primera:
**Najcesce je inline funkcionalnost ali moze da se nazubi po zelji:**

```
funkcija arg = **if** (uslov) **then** izraz1 **else** izraz2
```

**Guarded equations (ogradjene jednacine)**


		funkcija arg

			| uslov = izraz1
				
			| otherwise = izraz2 



## Liste
**Lista je niz vrednosti istog *tipa*.**

**Operacije nad listama:**

- x : lista - dodaje element x na pocetak liste
- lista1 ++ lista1 - nadovezuje dve liste
- lista !! p - vraca element liste koji se nalazi na poziciji p
- [a..b] - konstruise listu sa elementima od a do b (u zavisnosti od tipa)

**Funkcije nad listama:**

- head(lista) - vraca prvi element liste --> **head([1..10]) == 1**
- tail(lista) - vraca sve elemente liste bez prvog elementa --> **tail([1..10]) == [2,3,4,5,6,7,8,9,10]**
- null(lista) - vraca **True** ako je lista prazna, a **False** ako nije.
- length(lista) - vraca duzinu liste
- take n lista - uzima prvih **n** elemenata iz liste **lista** i vraca kao novu listu
- drop n lista - brise prvih **n** elemenata iz liste **lista** i ostale elemente vraca kao novu listu

**Niske - liste karaktera**

- niska1 = "Danas"
- niska2 = ['D', 'a', 'n', 'a', 's']

## Torke
- Fiksne su duzine
- Mogu da sadrze vrednosti **razlicitih** tipova
- ('a', 1, "Hello", [1..10])

**Najcesce torke su dvojke, zato imaju posebne funkcije za rad sa dvojkama**

- fst (a, b) - vraca a
- snd (a, b) - vraca b

















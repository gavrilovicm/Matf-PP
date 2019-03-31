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

	duplo :: Int -> Int 

## Aritmeticke operacije i funckije nad tipovima Int , Integer , Float:
- +, -, *, /,
- ^^ - stepen (tip Int)
- ** - stepen (tip Float)
- mod , div , log , sqrt , sin , cos , tan 
- fromIntegral - funkcija koja vrsi kastovanje integer-a u double.
- even x/odd x - funkcija koja proverava da li je x parno/neparno

## Grananje sa if naredbom preko primera:
**Najcesce je inline funkcionalnost ali moze da se nazubi po zelji:**

	funkcija arg = if (uslov) then izraz1 else izraz2

**Guarded equations (ogradjene jednacine):**


		funkcija arg

			| uslov = izraz1
				
			| otherwise = izraz2 
**otherwise ne mora da se pojavi ali izbacuje se Exception ako se ne udje ni u jednu od datih grana.**


## Liste
**Lista je niz vrednosti istog *tipa*.**

### Operacije nad listama:

- x : lista - dodaje element x na pocetak liste
- lista1 ++ lista1 - nadovezuje dve liste
- lista !! p - vraca element liste koji se nalazi na poziciji p
- [a..b] - konstruise listu sa elementima od a do b (u zavisnosti od tipa)

### Funkcije nad listama:

- head(lista) - vraca prvi element liste --> **head([1..10]) == 1**
- tail(lista) - vraca sve elemente liste bez prvog elementa --> **tail([1..10]) == [2,3,4,5,6,7,8,9,10]**
- null(lista) - vraca **True** ako je lista prazna, a **False** ako nije.
- length(lista) - vraca duzinu liste
- take n lista - uzima prvih **n** elemenata iz liste **lista** i vraca kao novu listu
- drop n lista - brise prvih **n** elemenata iz liste **lista** i ostale elemente vraca kao novu listu
- zip lista1 lista2 - pravi listu uredjenih parova gde je prvi element iz lista1 a drugi iz lista2

### Niske - liste karaktera

- niska1 = "Danas"
- niska2 = ['D', 'a', 'n', 'a', 's']

### Sabloni liste

- (x:xs) - tretiramo ga slicno kao regularni izraz. Kada se pojavi lista vrednost x ce uzeti\
vrednost glave a xs vrednost ostatka liste

primer:

	glavaListe (x:xs) = x

**Kada je data prazna lista izbacuje se exception kada se pristupa x ili xs**

Kada ne koristimo neki deo sablona (npr. rep liste) mozemo da sablon zapisemo i na sledeci nacin:

	glavaListe(x:_) = x

### Generatori liste

Najbolje se vidi na primeru: Treba generisati listu parnih elemenata iz intervala [a, b]

	generator a b = [x | x <- [a..b], mod x 2 == 0]
				^
				|
				znak za 'podskup'

## Torke
- Fiksne su duzine
- Mogu da sadrze vrednosti **razlicitih** tipova
- ('a', 1, "Hello", [1..10])

**Najcesce torke su dvojke, zato imaju posebne funkcije za rad sa dvojkama**

- fst (a, b) - vraca a
- snd (a, b) - vraca b


## Predefinisanje logickih operatora

**Ne dolazi na kolokvijumu!**

Predefinisanje logicke konjukcije &&. Ona se obavezno stavlja u zagradu.

	(&&) :: Bool -> Bool -> Bool
	True && True = True
	x && y = False


	True && y = y -> u ovom slucaju vrednost y se pamti i koristi dalje u zadatku
	_ && _ = False -> uvodjenje wildcard-a. On menja bilokoji element.
	Koristi se kada ne zelimo da sacuvamo vrednost koje se nadje na tom mestu.

## Funkcije viseg reda

Funkcije viseg reda su funkcije koje uzimaju kao argument funkciju ili vracaju funkciju kao rezultat.

### Funkcija 'map'

Kao prvi argument uzima funkciju koju primenjuje na sve elemente liste koju uzima kao drugi argument

	map :: (a -> b) -> [a] -> [b]

### Funkcija 'filter'

Funkcija dobija kao argumente funkciju i listu. Funkcija je definisana tako da nad elementom koji
je istog tipa kao element liste vraca Bool vrednost, ona se primenjuje na svaki element liste i pamti
one elemente kojima je vrednost True.

	filter :: (a -> Bool) -> [a] -> [a]

_________________

Kada rezultat funkcije nad listom treba da ima isti broj elemenata kao ta lista onda nam to govori da 
treba da koristimo **map**, kada rezultat funkcije nad listom ne mora da ima isti broj elemenata kao ta
funkcija to znaci da treba da koristimo **filter**.

_____________________

### Funkcija 'foldr'

Funkcija viseg reda koja simulira rekurziju. Prvi argument jeste binarna funkcija koja ima prvi argument
iz liste a drugi argument je argument tipa rezultata i vraca element tipa rezultata. Drugi argument funkcije foldr
jeste argument tipa rezultata, treci argument je lista a cetvrti argument je rezultat.

	foldr :: (a -> b -> b) -> b -> t a -> b

Sad malo normalniji opis: prvi argument je funkcija koja se primenjuje na svaki element liste. Drugi argument je
izlaz iz rekurzije koju simulira f-ja **foldr** a treci argument je lista na koju primenjujemo sve ovo.

#### Opis i duboko shvatanje rada funkcije foldr:

Lista elemenata se razmotava na sledeci nacin koji je najpogodniji za shvatanje rada funkcije **foldr**:

		 [1, 2, 3] 
	<=> 1 : [2, 3] 
	<=> 1 : (2 : [3]) 
	<=> 1 : (2 : (3 : [])) -- gde je : dodavanje na pocetak liste
			^
			|
		ovo je potpuno razmotana lista

Uzmimo primer da hocemo da primenimo sabiranje svih elemenata liste. Funkciju koju tada hocemo da primenimo nad 
elementima liste je funkcija sabiranja tj **(+)**. Funkciju samo zamenimo u potpuno razmotanoj listi umesto znaka **':'**

	1 + (2 + (3 + []))

Sada dolazimo do drugog argumenta funkcije **foldr**. On se menja umesto prazne liste u potpuno razmotanoj listi
i simulira izlaz iz rekurzije. Za nase sabiranje je najpogodnije da to bude nula. Kada se to primeni dobijamo sledece:

	1 + (2 + (3 + 0))

**Konacno:** vidimo da se funkcija za sabiranje svih elemenata liste moze zapisati na sledeci nacin:

	sumaElemenataListe lista = foldr (+) 0 lista

### Dodatne funkcije viseg reda:

- **any** uslov lista - vraca True ako postoji element u listi koji zadovoljava uslov, False inace
- **all** uslov lista - vraca True ako svi elementi u listi zadovoljavaju uslov, False inace
- **takeWhile** uslov lista - izdvaja jedan po jedan element liste sve dok ne stigne do elementa koji ne zadovoljava uslov
- **dropWhile** uslov lista - izbacuje jedan po jedan element liste sve dok ne stigne do elementa koji ne zadovoljava uslov
- **sum** lista - sabira elemente liste
- **product** lista - mnozi elemente liste
- **reverse** lista - obrce listu
- **unzip** - spaja listu parova u dve liste
- **concat** lista - spaja liste iz liste listi u jednu listu
- **elem** e lista - vraca True ako e postoji u listi, False inace
- **replicate** n x - kopira broj x n puta

### Kompozicija funkcija

**Sintaksa**:

	(f . g) x <=> f (g x) 


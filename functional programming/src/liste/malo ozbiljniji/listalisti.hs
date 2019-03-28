-- Funkcija koja spaja listu listi istog tipa u jednu listu


-- rekurzivno resenje, prvo palo na pamet
spoji lista = spoji1 lista (length(lista)-1)

spoji1 lista n
	| n == 0 = lista !! n
	| otherwise = spoji1 lista (n-1) ++ (lista !! n)


-- preko sablona liste
spoji_2 [] = []
spoji_2 (x:xs) = x ++ spoji_2 xs


-- jos bolje
spoj lista = [x | podlista<-lista, x<-podlista]


-- Napisati funkciju poslednji l koja određuje poslednji element proizvoljne liste l

-- rekurzijom
poslednji lista
	| length(lista) == 1 = lista !! 0
	| otherwise = poslednji (tail (lista))


-- elegantnije
poslednji1 lista = lista !! (length(lista) - 1)


-- upotreba promenljive poz koja se tek kasnije definise je ovakve sintakse:
poslednji2 lista = lista !! poz
		where poz = length(lista) - 1

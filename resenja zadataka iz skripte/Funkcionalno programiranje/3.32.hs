poslednji lista
	| length (lista) == 1 = head lista
	| otherwise = poslednji (tail lista)

-- funkcija nadovezuje lista2 na lista1 n puta
nadovezi lista1 lista2 n
	| n == 0 = lista1
	| n == 1 = lista1 ++ lista2
	| otherwise = (nadovezi lista1 lista2 (n-1)) ++ lista2 

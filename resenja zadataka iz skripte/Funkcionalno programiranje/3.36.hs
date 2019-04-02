ubaci k n l = _ubaci k n l 1

_ubaci k n lista i
	| null lista = [n]
	| i==k = head(lista) : (n : (tail lista))
	| otherwise =head(lista) : _ubaci k n (tail lista) (i+1)

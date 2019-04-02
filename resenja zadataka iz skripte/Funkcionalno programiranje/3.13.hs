ceoDeo x = _ceoDeo x 1

_ceoDeo x i
	| i*i > x = i-1
	| otherwise = _ceoDeo x (i+1)

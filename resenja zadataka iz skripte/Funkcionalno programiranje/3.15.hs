
delioci n = _delioci n 2

_delioci n i
	| i == n = []
	| mod n i == 0 = i : _delioci n (i+1)
	| otherwise = _delioci n (i+1)

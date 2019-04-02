delioci n = del n 2

del n i
	| i == n = 0
	| mod n i == 0 = 1 + del n (i+1)
	| otherwise = del n (i+1)

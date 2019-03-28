-- resavamo preko takozvane wrapper funkcije
prost n = prost1 n 2

prost1 n m
	| m == n = True
	| (mod n m) == 0 = False
	| otherwise = prost1 n (m+1)

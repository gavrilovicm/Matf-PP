-- funkcija pravi listu svih pravih delilaca broja n
delioci n 
	| n == 1 = [1]
	| otherwise = delioci1 n 2

delioci1 n k
	| n == k = []
	| (mod n k) == 0 = [k] ++ delioci1 n (k+1)
	| otherwise = delioci1 n (k+1)


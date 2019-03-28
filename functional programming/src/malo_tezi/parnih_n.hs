-- funkcija pravi listu prvih n parnih prirodnih brojeva 
-- zadatak 3.21

parni n = parni1 n 2

parni1 n k
	| n == 0 = []
	| otherwise = [k] ++ parni1 (n-1) (k+2)

-- funkcija koja vraća broj pravih delilaca prirodnog broja n
-- zadatak 3.18

brojDelilaca n 
	| n == 1 = 0
	| otherwise = brojDelilaca1 n 2

brojDelilaca1 n k
	| n == k = 0
	| n `mod` k == 0 = 1 + brojDelilaca1 n (k+1)
	| otherwise = brojDelilaca1 n (k+1)

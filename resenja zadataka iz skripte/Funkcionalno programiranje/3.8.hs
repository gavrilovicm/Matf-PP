proizvod n = product [1..n]

proizvod2 n
	| n == 1 = 1 
	| otherwise = n * proizvod2 (n-1)

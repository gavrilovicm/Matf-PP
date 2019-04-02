nadovezi l1 l2 n 
	| n == 0 = l1
	| otherwise = l1 ++ _nadovezi l2 n

_nadovezi l2 n
	| n == 1 = l2
	| otherwise = l2 ++ _nadovezi l2 (n-1)

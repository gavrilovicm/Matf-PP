nzd a b
	| b == 0 = a
	| otherwise = nzd b (mod a b)

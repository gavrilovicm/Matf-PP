-- pravi se lista svih n elemenata harmonijskog reda

harm n
	| n == 1 = [1.0]
	| otherwise = harm(n-1) ++ [recip n]

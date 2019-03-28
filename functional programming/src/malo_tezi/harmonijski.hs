-- pravi se harmonijski red broja n

harm n
	| n == 1 = [1.0]
	| otherwise = harm(n-1) ++ [recip n]

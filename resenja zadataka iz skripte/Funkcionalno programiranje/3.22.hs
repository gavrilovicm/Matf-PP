fib n
	| (n==1) || (n==2) = 1
	| otherwise = fib (n-1) + fib (n-2)
listaFib n = [fib y | y<-[1..n] ]


-- sumaKvadrata n = sum [y*y | y<-[1..n]] 


-- rekurzivno bez formule

sumaKvadrata n
	| n == 1 = 1
	| otherwise = n*n + sumaKvadrata (n-1)

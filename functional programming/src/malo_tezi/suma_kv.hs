--funkcija koja racuna sumu kvadrata prvih n prirodnih brojeva
--zadatak 3.17 iz zbirke

sumaKv n
	| n == 1 = 1
	| otherwise = (sumaKv (n-1)) + n**2

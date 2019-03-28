-- Funkcija pravi listu prvih n elemenata Fibonačijevog niza.
-- zadatak 3.22


fibLista n 
	| n==0 = []
	| otherwise = fib(n) : fibLista(n-1)


-- funkcija koja racuna n-ti clan fibonacijevog niza
fib n
	| n == 1 = 1
	| n == 2 = 1
	| otherwise = fib(n-1) + fib(n-2)

{-
 -	Opciono ako zelite da se ispise u obrnutom poretku lista elemenata:

 -	preimenujte fibLista u fibLista1 kako bi definisali novu funkciju fibLista
 	
	fibLista n = reverse(fibLista1 n)

 -	fibLista poziva fibLista1 koja pravi zeljenu listu i onda rezultat te funkcije 
 -	obrne funkcijom reverse
	
 -	sasvim dobro resenje je i bez toga
 -}

-- Funkcija pravi listu svih jednocifrenih delilaca prirodnog broja n.
-- zadatak 3.23


jednocifreniDelioci n = jedn n 1

jedn n k
	| k > 9 = []
	| mod n k == 0 = k : jedn n (k+1)
	| otherwise = jedn n (k+1)

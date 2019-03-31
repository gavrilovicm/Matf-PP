-- funkcija koja vraca najveci pozitivni prefiks liste
-- primer: [1, 2, 3, -4, 6, 9] -> [1, 2, 3]

-- prvo intuitivno resenje
pozPref1 [] = []
pozPref1 (x:xs) 
	| x>0 = x : pozPref1 (xs)
	| otherwise = []


-- preko funkcije takeWhile
pozPref lista = takeWhile (>0) lista

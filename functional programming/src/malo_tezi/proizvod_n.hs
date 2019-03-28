-- funkcija vraca proizvod prvih n prirodnih brojeva
-- prvi nacin
proizvod :: Integer -> Integer
proizvod n 
	| n==1 = 1
	| otherwise = n * proizvod(n-1)

-- drugi nacin
proizvod2 :: Integer -> Integer
proizvod2 n = if (n == 1) then 1 else n*proizvod2(n-1)



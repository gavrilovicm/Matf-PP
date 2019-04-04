compress :: [[Int]] -> [(Int, [Int])]
compress tablica = [(manji a, pozicije a (manji a) 0) | a<-tablica]

-- funkcija manji vraca element liste koji se manje puta pojavio
manji lista 
	| length(filter (==0) lista) > length(filter (==1) lista) = 1
	| otherwise = 0

-- funkcija pozicije vraca listu pozicija na kojima se 'x' nalazi u listi 'lista'
pozicije [] _ _ = []
pozicije lista x i
	| head lista == x = [i] ++ pozicije (tail lista) x (i+1)
	| otherwise = pozicije (tail lista) x (i+1)

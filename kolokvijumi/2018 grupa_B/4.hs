--  deo pod a)
-----------------------------------------------------------------------------
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







-- deo pod b)
-- U postavci zadatka na pdf-u je pogreseno u definiciji funkcije
-- ona mora da izgleda ovako kao sto sam je ja napisao zato sto mora da primi i
-- argument 'dim' koji joj govori koja je duzina vrste. Da nema toga imali bi 
-- neodluciv problem.

decompress ::[(Int, [Int])] -> Int -> [[Int]] 
decompress lista_parova dim = [dekompr s 0 (dim-1)| s<-lista_parova]

dekompr dvojka i dim
	| i > dim = []
	| elem i (snd dvojka) = fst dvojka : dekompr dvojka (i+1) dim
	| otherwise = abs (fst dvojka - 1) : dekompr dvojka (i+1) dim

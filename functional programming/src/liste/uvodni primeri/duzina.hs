-- Napisati funkciju koja vraca duzinu liste 


-- preko if-a
duzina lista = if (null lista) then 0 else (1 + duzina(tail(lista)))


-- preko quarded equations
duzina2 lista
	| null lista = 0
	| otherwise = 1 + duzina(tail(lista))

-- preko sablona liste
duzina3 [] = 0
duzina3 lista = 1 + duzina3(tail(lista))

duzina4 [] = 0
duzina4 (x:xs) = 1 + duzina3(xs)

patern (x:xs) = xs


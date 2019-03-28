-- funkcija pravi listu svih sufiksa liste l

sufiks l 
	| null l = [[]]
	| tail l == [] = [[head l]] ++ sufiks(tail l)
	| otherwise = [l] ++ sufiks (tail l)

--elegantnije resenje

sufiks1 [] = [[]]
sufiks1 (x:xs) = (x:xs) : sufiks1 xs

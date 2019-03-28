-- funkcija koja ubacuje u listu l na poziciju k element n. Ako je n lose napisano dodati ga na kraj liste.

ubaci k n l	= ubaci1 k n l 0

ubaci1 k n l i
	| k == i = n : l
	| k > length(l) = l ++ [n]
	| otherwise = (head l) : ubaci1 k n (tail l) (i+1)



-- implementacija zip funkcije rucno

parOdListi [] _ = []
parOdListi _ [] = []
parOdListi (x:xs) (y:ys) = (x, y) : parOdListi xs ys

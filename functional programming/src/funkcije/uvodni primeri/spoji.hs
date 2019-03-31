-- funkcija pravi listu uredjenih parova elemenata iz dve liste

-- vec ugradjena funkcija 'zip'
spoj l1 l2 = zip l1 l2 


-- bez koriscenja zip-a
spoji1 :: [a] -> [b] -> [(a, b)]
spoji1 [] [] = []
spoji1 [] _ = [] -- dva specijalna slucaja kada je neka lista duza od druge
spoji1 _ [] = []
spoji1 (x:xs) (y:ys) = (x, y) : spoji1 xs ys


-- elegantnija varijanta

{-
spoji1 :: [a] -> [b] -> [(a, b)]
spoji1 (x:xs) (y:ys) = (x, y) : spoji1 xs ys
spoji1 _ _ = []
 -}


-- najjednostavnije napraviti 'alias' za funkciju spoji
spoji3 = zip
-- ekvivalentno sa
-- spoji3 lista1 lista2 = zip lista1 lista2
